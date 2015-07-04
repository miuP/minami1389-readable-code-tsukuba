//
//  main.swift
//  minami1389-readable-code-tsukuba
//
//  Created by minami on 7/4/15.
//  Copyright (c) 2015 minami. All rights reserved.
//

import Foundation


func main() {

    //${プロジェクトの絶対パス}/${プロジェクト名}/
    let kFileRepositryPath = "/Users/Illya/develop/minami1389-readable-code-tsukuba/minami1389-readable-code-tsukuba/"
    let recipeDataFileName = kFileRepositryPath + "recipe-data.txt"
    if let recipes = String(contentsOfFile: recipeDataFileName, encoding: NSUTF8StringEncoding, error: nil) {
        let recipesArray = createRecipeArray(recipes)
        let input = getIntByStdIn()
        if input == 0 {
            println("display All Recipe")
            displayRecipes(recipesArray)
        } else {
            println("display ID:\(input) Recipe")
            recipesArray[input - 1].print()
        }
    }
    
}


func createRecipeArray(recipes: String) -> [Recipe] {

    var recipeArray:[Recipe] = []
    
    //enumerateLines:1行ごとに文字列を抜き出すメソッド
    //recipesの中から1つずつrecipeを取り出す
    var count = 0
    recipes.enumerateLines({ (recipe, stop) in
        count++
        let recipeInfo = recipe.componentsSeparatedByString(" ") //recipeの入力形式 -> name desciption
        let aRecipe = Recipe(id: count, name: recipeInfo[0], description: recipeInfo[1])
        recipeArray.append(aRecipe)
    })
    
    return recipeArray

}

func getIntByStdIn() -> Int {
    let input = NSFileHandle.fileHandleWithStandardInput()
    let str = NSString(data: input.availableData, encoding: NSUTF8StringEncoding)
    let scanner = NSScanner(string: str! as String)
    var value: Int = 0
    let result = scanner.scanInteger(&value)
    return value
}

func displayRecipes(recipes: [Recipe]) {
    for recipe: Recipe in recipes {
        recipe.print()
    }
}

main()