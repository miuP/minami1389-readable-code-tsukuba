Swift

#実行手順


##仕様1
###1. 実装する

ソースコード
***
println("オムライス")

###2. 実行する


##仕様3
###1. "recipe-data.txt"というファイルを作成する。

内容
***
オムライス

###2. 実装する

//${プロジェクトの絶対パス}/${プロジェクト名}/
let kFileRepositryPath = "/Users/minami/readable-code/minami1389-readable-code-tsukuba/minami1389-readable-code-tsukuba/"
let recipeDataFileName = kFileRepositryPath + "recipe-data.txt"
if let recipe = String(contentsOfFile: recipeDataFileName, encoding: NSUTF8StringEncoding, error: nil) {
    println(recipe)
}

###3.実行する




