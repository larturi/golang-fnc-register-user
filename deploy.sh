git add .
git commit -m "Commit"
git push

set GOOS=linux
set GOARCH=amd64

go build -tags lambda.norpc -o main.go
rm main.zip
zip main.zip main

# chmod +x deploy.sh
# ./deploy.sh