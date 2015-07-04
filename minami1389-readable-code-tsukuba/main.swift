//
//  main.swift
//  minami1389-readable-code-tsukuba
//
//  Created by minami on 7/4/15.
//  Copyright (c) 2015 minami. All rights reserved.
//

import Foundation


func main () {

    //${プロジェクトの絶対パス}/${プロジェクト名}/
    let kFileRepositryPath = "/Users/minami/readable-code/minami1389-readable-code-tsukuba/minami1389-readable-code-tsukuba/"

    let recipeDataFileName = kFileRepositryPath + "recipe-data.txt"
    if let recipes = String(contentsOfFile: recipeDataFileName, encoding: NSUTF8StringEncoding, error: nil) {
        let recipeDictionary = createRecipeDictionary(recipes)
    
        println("display All Recipe")
        displayRecipe(recipeDictionary)
        
        println("display ID:2 Recipe")
        displayRecipeById(2, recipeDictionary)
    }
    
}


func createRecipeDictionary(recipes: String) -> NSDictionary {

    var recipeDictionary : [Int:String] = [:]
    
    //enumerateLines:1行ごとに文字列を抜き出すメソッド
    //recipesの中から1つずつrecipeを取り出す
    recipes.enumerateLines({
        recipe, stop in
        let recipeInfo = recipe.componentsSeparatedByString(":") //recipeの入力形式 -> id:content
        if let recipeId = recipeInfo[0].toInt() {
            let recipeContent = recipeInfo[1]
            recipeDictionary[recipeId] = recipeContent
        }
    })
    
    return recipeDictionary

}


func displayRecipeById(id: Int, recipeDictionary: NSDictionary) {
    //表示形式 -> id:content
    print(String(id) + ": ")
    println(recipeDictionary[id]!)
}


func displayRecipe(recipeDictionary: NSDictionary) {
    let ids = Array(recipeDictionary.allKeys)
    for id in ids {
        if let idInt = id as? Int { displayRecipeById(idInt, recipeDictionary) }
    }
}

main()