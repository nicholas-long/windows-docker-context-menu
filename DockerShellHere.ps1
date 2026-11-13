param(
    [Parameter(Mandatory = $true)]
    [string]$Directory
)

docker run --rm -it `
    --mount "type=bind,source=$Directory,target=/mnt/current" `
    -w /mnt/current `
    kali-dev

#docker run --rm -v "$(PWD):/mnt/current" -w /mnt/current -it kali-dev