Swift

#実行手順


##仕様1
###1. 実装する
```Swift
println("オムライス")
```  

###2. 実行する



##仕様3
###1. Xcode上で新しいファイル("recipe-data.txt")を作成する。

```
オムライス
```

###2. 実装する

```swift
//${プロジェクトの絶対パス}/${プロジェクト名}/
let kFileRepositryPath = "/Users/minami/readable-code/minami1389-readable-code-tsukuba/minami1389-readable-code-tsukuba/"

let recipeDataFileName = kFileRepositryPath + "recipe-data.txt"
if let recipe = String(contentsOfFile: recipeDataFileName, encoding: NSUTF8StringEncoding, error: nil) {
    println(recipe)
}
```

###3.実行する


##仕様4
###1. "recipe-data.txt"を編集する。

```
オムライス
親子丼
杏仁豆腐
```

###2. 実装する

```swift
//${プロジェクトの絶対パス}/${プロジェクト名}/
let kFileRepositryPath = "/Users/minami/readable-code/minami1389-readable-code-tsukuba/minami1389-readable-code-tsukuba/"

let recipeDataFileName = kFileRepositryPath + "recipe-data.txt"
if let recipe = String(contentsOfFile: recipeDataFileName, encoding: NSUTF8StringEncoding, error: nil) {

  //--------- 変更箇所 ---------
    //1行ごとに文字列を抜き出す
    recipe.enumerateLines({
        line, stop in
        println(line)
    })
  //----------------------------

}

```

###3.実行する
