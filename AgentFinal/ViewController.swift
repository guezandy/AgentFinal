//
//  ViewController.swift
//  AgentFinal
//
//  Created by Andrew Rodriguez on 4/10/15.
//  Copyright (c) 2015 Andrew Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t00: UIButton!
    @IBOutlet weak var t01: UIButton!
    @IBOutlet weak var t02: UIButton!
    @IBOutlet weak var t03: UIButton!
    @IBOutlet weak var t04: UIButton!
    @IBOutlet weak var t10: UIButton!
    @IBOutlet weak var t11: UIButton!
    @IBOutlet weak var t12: UIButton!
    @IBOutlet weak var t13: UIButton!
    @IBOutlet weak var t14: UIButton!
    @IBOutlet weak var t20: UIButton!
    @IBOutlet weak var t21: UIButton!
    @IBOutlet weak var t22: UIButton!
    @IBOutlet weak var t23: UIButton!
    @IBOutlet weak var t24: UIButton!
    @IBOutlet weak var t30: UIButton!
    @IBOutlet weak var t31: UIButton!
    @IBOutlet weak var t32: UIButton!
    @IBOutlet weak var t33: UIButton!
    @IBOutlet weak var t34: UIButton!
    @IBOutlet weak var t40: UIButton!
    @IBOutlet weak var t41: UIButton!
    @IBOutlet weak var t42: UIButton!
    @IBOutlet weak var t43: UIButton!
    @IBOutlet weak var t44: UIButton!
    @IBOutlet weak var pathLabel: UILabel!
    @IBOutlet weak var pathTextView: UITextView!
    
    @IBOutlet weak var startButton: UIButton!

    var maze : [[String]] = [
        ["y","b","b","d","l"],
        ["n","n","n","y","y"],
        ["n","n","n","n","b"],
        ["n","n","n","n","d"],
        ["n","n","n","n","d"]
    ];

    /*var maze : [[String]] = [
        ["n","n","n","n","n"],
        ["n","n","n","n","n"],
        ["n","n","n","n","n"],
        ["n","n","n","n","n"],
        ["n","n","n","n","n"]
    ];*/
    
    var gameStarted = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        t00.backgroundColor = UIColor.yellowColor();
        t01.backgroundColor = UIColor.blueColor();
        t02.backgroundColor = UIColor.blackColor();
        t03.backgroundColor = UIColor.blackColor();
        t04.backgroundColor = UIColor.blackColor();
        t10.backgroundColor = UIColor.blackColor();
        t11.backgroundColor = UIColor.blueColor();
        t12.backgroundColor = UIColor.blackColor();
        t13.backgroundColor = UIColor.blackColor();
        t14.backgroundColor = UIColor.blackColor();
        t20.backgroundColor = UIColor.blackColor();
        t21.backgroundColor = UIColor.greenColor();
        t22.backgroundColor = UIColor.yellowColor();
        t23.backgroundColor = UIColor.blackColor();
        t24.backgroundColor = UIColor.blackColor();
        t30.backgroundColor = UIColor.blackColor();
        t31.backgroundColor = UIColor.blackColor();
        t32.backgroundColor = UIColor.blueColor();
        t33.backgroundColor = UIColor.blackColor();
        t34.backgroundColor = UIColor.blackColor();
        t40.backgroundColor = UIColor.blackColor();
        t42.backgroundColor = UIColor.blueColor();
        t41.backgroundColor = UIColor.blackColor();
        t43.backgroundColor = UIColor.greenColor();
        t44.backgroundColor = UIColor.yellowColor();
        
        //pathLabel.text = "Path:";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(sender: UIButton) {
        t00.backgroundColor = UIColor.blackColor();
        t01.backgroundColor = UIColor.blackColor();
        t02.backgroundColor = UIColor.blackColor();
        t03.backgroundColor = UIColor.blackColor();
        t04.backgroundColor = UIColor.blackColor();
        t10.backgroundColor = UIColor.blackColor();
        t11.backgroundColor = UIColor.blackColor();
        t12.backgroundColor = UIColor.blackColor();
        t13.backgroundColor = UIColor.blackColor();
        t14.backgroundColor = UIColor.blackColor();
        t20.backgroundColor = UIColor.blackColor();
        t21.backgroundColor = UIColor.blackColor();
        t22.backgroundColor = UIColor.blackColor();
        t23.backgroundColor = UIColor.blackColor();
        t24.backgroundColor = UIColor.blackColor();
        t30.backgroundColor = UIColor.blackColor();
        t31.backgroundColor = UIColor.blackColor();
        t32.backgroundColor = UIColor.blackColor();
        t33.backgroundColor = UIColor.blackColor();
        t34.backgroundColor = UIColor.blackColor();
        t40.backgroundColor = UIColor.blackColor();
        t41.backgroundColor = UIColor.blackColor();
        t42.backgroundColor = UIColor.blackColor();
        t43.backgroundColor = UIColor.blackColor();
        t44.backgroundColor = UIColor.blackColor();
        
        maze = [
            ["n","n","n","n","n"],
            ["n","n","n","n","n"],
            ["n","n","n","n","n"],
            ["n","n","n","n","n"],
            ["n","n","n","n","n"]
        ];
        pathTextView.text = "";
        gameStarted = false;
    }

    @IBAction func changeBackground(sender: UIButton) {
        var button  = sender;
        println(maze);
        if(!gameStarted) {
        if(button.backgroundColor == UIColor.blackColor()) {
            println("Black");
            updateMatrix(button.titleLabel?.text?, color: "y");
            button.backgroundColor = UIColor.yellowColor();
        } else if(button.backgroundColor == UIColor.yellowColor()) {
            updateMatrix(button.titleLabel?.text?, color: "b");
            button.backgroundColor = UIColor.blueColor();
        } else if(button.backgroundColor == UIColor.blueColor()) {
            updateMatrix(button.titleLabel?.text?, color: "d");
            button.backgroundColor = UIColor.greenColor();
        } else if(button.backgroundColor == UIColor.greenColor()) {
            updateMatrix(button.titleLabel?.text?, color: "l");
            button.backgroundColor = UIColor.grayColor();
        } else if(button.backgroundColor == UIColor.grayColor()) {
            updateMatrix(button.titleLabel?.text?, color: "n");
            button.backgroundColor = UIColor.blackColor();
        } else {
            
        }
        }
        println(maze);
    }
    
    func updateMatrix(text : String?, color : String) {
        if(text == nil) {
            
        } else if(text == "0,0") {
            maze[0][0] = color;
        } else if(text == "0,1") {
            maze[0][1] = color;
        } else if(text == "0,2") {
            maze[0][2] = color;
        } else if(text == "0,3") {
            maze[0][3] = color;
        } else if(text == "0,4") {
            maze[0][4] = color;
        }else if(text == "1,0") {
            maze[1][0] = color;
        }else if(text == "1,1") {
            maze[1][1] = color;
        }else if(text == "1,2") {
            maze[1][2] = color;
        }else if(text == "1,3") {
            maze[1][3] = color;
        }else if(text == "1,4") {
            maze[1][4] = color;
        }else if(text == "2,0") {
            maze[2][0] = color;
        }else if(text == "2,1") {
            maze[2][1] = color;
        }else if(text == "2,2") {
            maze[2][2] = color;
        }else if(text == "2,3") {
            maze[2][3] = color;
        }else if(text == "2,4") {
            maze[2][4] = color;
        } else if(text == "3,0") {
            maze[3][0] = color;
        }else if(text == "3,1") {
            maze[3][1] = color;
        }else if(text == "3,2") {
            maze[3][2] = color;
        }else if(text == "3,3") {
            maze[3][3] = color;
        }else if(text == "3,4") {
            maze[3][4] = color;
        }else if(text == "4,0") {
            maze[4][0] = color;
        }else if(text == "4,1") {
            maze[4][1] = color;
        }else if(text == "4,2") {
            maze[4][2] = color;
        }else if(text == "4,3") {
            maze[4][3] = color;
        }else if(text == "4,4") {
            maze[4][4] = color;
        }
    }
    @IBAction func StartTheGame(sender: UIButton) {
       // println("\(maze[0][0])");
        gameStarted = true;
        var Traverser = TraverserAgent(theMaze: maze);
        var movements = "";
        while(!(Traverser.xLocation == 4 && Traverser.yLocation == 4)) {
            //println(Traverser.NESW);
            Traverser.checkLocations(Traverser.xLocation, y: Traverser.yLocation);
            println(Traverser.NESW);
            
            var foundMovement = false;
            for index in 0..<4 {
                //println("\(index)");
                if(!foundMovement) {
                if(Traverser.NESW[index] == "g") {
                    //println("WERE HERE");
                    switch(index) {
                    case 0:
                        println("CASE 0 moving north");
                        movements = movements + "\nMoving North from: \(Traverser.xLocation),\(Traverser.yLocation) to \(Traverser.xLocation),\(Traverser.yLocation+1)";
                        Traverser.moveTo(Traverser.xLocation, y: Traverser.yLocation+1);
                        foundMovement = true;
                    case 1:
                        println("CASE 1 moving east");
                        movements = movements + "\nMoving East from: \(Traverser.xLocation),\(Traverser.yLocation) to \(Traverser.xLocation+1),\(Traverser.yLocation)";
                        Traverser.moveTo(Traverser.xLocation+1, y: Traverser.yLocation);
                        foundMovement = true;
                    case 2:
                        println("CASE 2 moving south");
                        movements = movements + "\nMoving South from: \(Traverser.xLocation),\(Traverser.yLocation) to \(Traverser.xLocation),\(Traverser.yLocation-1)";
                        Traverser.moveTo(Traverser.xLocation, y: Traverser.yLocation-1);
                        foundMovement = true;
                    case 3:
                        println("CASE 3 moving west");
                        movements = movements + "\nMoving West from: \(Traverser.xLocation),\(Traverser.yLocation) to \(Traverser.xLocation-1),\(Traverser.yLocation)";
                        Traverser.moveTo(Traverser.xLocation-1, y: Traverser.yLocation);
                        foundMovement = true;
                    default:
                        println("NO MOVEMENT POSSIBLE");
                    }
                }
                }
            }
            if(!foundMovement) {
                println("CASE Back Moving Back");
                movements = movements + "\nMoving Back from: \(Traverser.xLocation),\(Traverser.yLocation) to \(Traverser.prevX),\(Traverser.prevY)";
                Traverser.maze[Traverser.xLocation][Traverser.yLocation] = "e";
                Traverser.moveTo(Traverser.prevX, y: Traverser.prevY);
                foundMovement = false;
            }
            println("T is at: \(Traverser.xLocation) and \(Traverser.yLocation)");
        }
        println("Setting label\n\(movements)");
        pathTextView.text = movements;
    }
    
    class TraverserAgent {
        var maze : [[String]];
        var xLocation : Int;
        var yLocation : Int;
        
        var prevX : Int;
        var prevY : Int;
        var NESW : [String]
        
        var yellow : YellowAgent;
        var blue : BlueAgent;
        var green : GreenAgent;
        
        var MazeKnowledge : Dictionary<Int, [String]>?;
        
        init() {
            xLocation = 0;
            yLocation = 0;
            prevX = 0;
            prevY = 0;
            maze = [];
            yellow = YellowAgent(maze : self.maze);
            blue = BlueAgent(maze : self.maze);
            green = GreenAgent(maze : self.maze);
            NESW = ["", "","",""];
        }
        init(theMaze : [[String]]) {
            xLocation = 0;
            yLocation = 0;
            prevX = 0;
            prevY = 0;
            maze = theMaze;
            yellow = YellowAgent(maze : self.maze);
            blue = BlueAgent(maze : self.maze);
            green = GreenAgent(maze : self.maze);
            NESW = ["", "","",""];
        }
        //check locations around
        func checkLocations(x : Int, y : Int)->[String] {
            var checkX = x;
            var checkY = y+1;
            if(checkX == prevX && checkY == prevY) {
                //println("THIS IS THE PREV location");
                NESW[0] = "p"
            } else if(checkX < 0 || checkX > 4 || checkY < 0 || checkY > 4) {
                //println("NORTH IS A WALL");
                NESW[0] = "w";
            } else {
                println("CALLING CHECK");
                var check = checkSingleLocation(checkX, mY: checkY);
                if(check) {
                    //println("North is good");
                    NESW[0] = "g";
                } else {
                    //println("North is bad");
                    NESW[0] = "b";
                }
            }
            checkX = x+1;
            checkY = y;
            if(checkX == prevX && checkY == prevY) {
                //println("THIS IS THE PREV location");
                NESW[1] = "p"
            } else if(checkX < 0 || checkX > 4 || checkY < 0 || checkY > 4) {
                ///println("EAST IS A WALL");
                NESW[1] = "w";
            } else {
                if(checkSingleLocation(checkX, mY: checkY)) {
                    NESW[1] = "g";
                } else {
                    NESW[1] = "b";
                }
            }
            checkX = x;
            checkY = y-1;
            if(checkX == prevX && checkY == prevY) {
                //println("THIS IS THE PREV location");
                NESW[2] = "p"
            } else if(checkX < 0 || checkX > 4 || checkY < 0 || checkY > 4) {
                //println("SOUTH IS A WALL");
                NESW[2] = "w";
            } else {
                if(checkSingleLocation(checkX, mY: checkY)) {
                    NESW[2] = "g";
                } else {
                    NESW[2] = "b";
                }
            }
            checkX = x-1;
            checkY = y;
            if(checkX == prevX && checkY == prevY) {
                //println("THIS IS THE PREV location");
                NESW[3] = "p"
            } else if(checkX < 0 || checkX > 4 || checkY < 0 || checkY > 4) {
                //println("WEST IS A WALL");
                NESW[3] = "w";
            } else {
                if(checkSingleLocation(checkX, mY: checkY)) {
                    NESW[3] = "g";
                } else {
                    NESW[3] = "b";
                }
            }
            return NESW;
        }
        //check single location
        func checkSingleLocation(mX : Int, mY : Int) -> Bool {
            if(maze[mX][mY] == "e") {
               //dead end
                println("DEAD END THAT WAY");
                return false;
            } else if(yellow.isYellow(mX, y: mY) && blue.isBlue(mX, y: mY)) {
                //println("IS BOTH Y&B");
                if(green.isDarkGreen(mX, y: mY)) {
                    println("IS DG");
                    return true;
                } else {
                    println("IS LG");
                    return false;
                }
            } else if(yellow.isYellow(mX, y: mY) || blue.isBlue(mX, y: mY)) {
                println("IS B||Y");
                return true;
            }
            println("IS NEITHER");
            return false;
        }
        
        //move to the location
        func moveTo(x : Int, y : Int) {
            prevX = xLocation;
            prevY = yLocation;
            self.xLocation = x;
            self.yLocation = y;
        }
        
        func getIntFromLocation(x : Int, y : Int)->Int {
            return (y*10 + x);
        }
        
        func getLocationFromInt(loc : Int) -> (x : Int,y : Int) {
            var x = loc%10;
            var y : Int = loc/10;
            return (x,y);
        }
    }
    class YellowAgent {
        var theMaze : [[String]];
        init(maze : [[String]]) {
            theMaze = maze;
        }
        init() {
            theMaze = [];
        }
        func isYellow(x : Int, y : Int)-> Bool {
            if(theMaze[x][y] == "y") {
                return true;
            } else if(theMaze[x][y] == "l") {
                return true;
            } else if(theMaze[x][y] == "d") {
                return true;
            } else {
                return false;
            }
        }
    }
    class BlueAgent {
        var theMaze : [[String]];
        init(maze : [[String]]) {
            theMaze = maze;
        }
        init() {
            theMaze = [];
        }
        func isBlue(x : Int, y : Int)-> Bool {
            if(theMaze[x][y] == "b") {
                return true;
            } else if(theMaze[x][y] == "l") {
                return true;
            } else if(theMaze[x][y] == "d") {
                return true;
            }  else {
                return false;
            }
        }
    }
    
    class GreenAgent {
        var theMaze : [[String]];
        init(maze : [[String]]) {
            theMaze = maze;
        }
        init() {
            theMaze = [];
        }
        func isDarkGreen(x : Int, y : Int)-> Bool {
            if(theMaze[x][y] == "d") {
                return true;
            } else {
                return false;
            }
        }
    }
}


