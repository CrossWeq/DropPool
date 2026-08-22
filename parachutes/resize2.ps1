Add-Type -AssemblyName System.Drawing

$folder = "c:\Users\mosma\OneDrive\Belgeler\DropPool\parachutes"
$files = @("parasut11.png", "parasut12.png", "parasut13.png", "parasut14.png")

foreach ($fileName in $files) {
    try {
        $fullName = Join-Path $folder $fileName
        if (-not (Test-Path $fullName)) { continue }
        
        $img = [System.Drawing.Image]::FromFile($fullName)
        
        $maxWidth = 200
        $maxHeight = 200
        
        $ratioX = $maxWidth / $img.Width
        $ratioY = $maxHeight / $img.Height
        $ratio = [math]::Min($ratioX, $ratioY)
        
        $newWidth = [int]($img.Width * $ratio)
        $newHeight = [int]($img.Height * $ratio)
        
        if ($ratio -ge 1) {
            Write-Host "${fileName} is already small enough."
            $img.Dispose()
            continue
        }

        $newImg = New-Object System.Drawing.Bitmap($newWidth, $newHeight)
        $graph = [System.Drawing.Graphics]::FromImage($newImg)
        
        $graph.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graph.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
        $graph.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
        $graph.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
        
        $graph.DrawImage($img, 0, 0, $newWidth, $newHeight)
        
        $img.Dispose() # Release the original file
        
        $newImg.Save($fullName, [System.Drawing.Imaging.ImageFormat]::Png)
        
        $graph.Dispose()
        $newImg.Dispose()
        
        Write-Host "Resized ${fileName} to (Size: ${newWidth}x${newHeight})"
        
    } catch {
        Write-Host "Error resizing ${fileName}: $_"
    }
}
