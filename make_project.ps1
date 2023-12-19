#create src and dist dirs
New-Item -ItemType Directory -Path "src", "dist"

#create js files for each entry
New-Item -Path "src\index.js" -ItemType "file"
New-Item -Path "src\bar_chart_example.js" -ItemType "file"

New-Item -Path "src\index.html" -ItemType "file"
New-Item -Path "src\bar_chart_example.html" -ItemType "file"

if(-not (Test-Path "package.json")){
    New-Item "package.json" -ItemType "file"
}

#create webpack if not exists
if(-not (Test-Path "webpack.config.js")){
   New-Item -Path "webpack.config.js" -ItemType "file" 
}