$targetDir = "D:\Project\fw1ost\wav"

Get-ChildItem -Path $targetDir -Filter *.wav | ForEach-Object {
    $filePath = $_.FullName
    git add $filePath

    git commit -m "update file: $($_.Name)"

    git push
}