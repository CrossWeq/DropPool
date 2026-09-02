Add-Type -AssemblyName System.Drawing

$folder = "c:\Users\mosma\OneDrive\Belgeler\DropPool\parachutes"

$heliFiles = Get-ChildItem -Path $folder -Filter "Helicopter*.png" | Select-Object -ExpandProperty Name
$planeFiles = Get-ChildItem -Path $folder -Filter "*plane*.png" | Select-Object -ExpandProperty Name

foreach ($fileName in $heliFiles) {
    try {
        $fullName = Join-Path $folder $fileName
        $img = [System.Drawing.Image]::FromFile($fullName)
        $newWidth = [int]($img.Width / 1.2)
        $newHeight = [int]($img.Height / 1.2)
        
        $newImg = New-Object System.Drawing.Bitmap($newWidth, $newHeight)
        $graph = [System.Drawing.Graphics]::FromImage($newImg)
        
        $graph.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graph.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
        $graph.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
        $graph.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
        
        $graph.DrawImage($img, 0, 0, $newWidth, $newHeight)
        
        $img.Dispose()
        $newImg.Save($fullName, [System.Drawing.Imaging.ImageFormat]::Png)
        $graph.Dispose()
        $newImg.Dispose()
        Write-Host "Resized (shrink 1.2x) ${fileName} to ${newWidth}x${newHeight}"
    } catch {
        Write-Host "Error resizing ${fileName}: $_"
    }
}

foreach ($fileName in $planeFiles) {
    try {
        $fullName = Join-Path $folder $fileName
        $img = [System.Drawing.Image]::FromFile($fullName)
        $newWidth = [int]($img.Width * 1.2)
        $newHeight = [int]($img.Height * 1.2)
        
        $newImg = New-Object System.Drawing.Bitmap($newWidth, $newHeight)
        $graph = [System.Drawing.Graphics]::FromImage($newImg)
        
        $graph.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graph.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
        $graph.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
        $graph.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
        
        $graph.DrawImage($img, 0, 0, $newWidth, $newHeight)
        
        $img.Dispose()
        $newImg.Save($fullName, [System.Drawing.Imaging.ImageFormat]::Png)
        $graph.Dispose()
        $newImg.Dispose()
        Write-Host "Resized (enlarge 1.2x) ${fileName} to ${newWidth}x${newHeight}"
    } catch {
        Write-Host "Error resizing ${fileName}: $_"
    }
}
