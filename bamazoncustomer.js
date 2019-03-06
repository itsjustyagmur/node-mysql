var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");

//  mysql connection
var connection = mysql.createConnection({
    host : "localhost",
    port: 3000,
    user : "root",
    password : "Shane29091",
    database : "bamazon"
});
connection.connect(function(err){
    if(err) throw err;
    display();
});

function display(){
    connection.query("SELECT * FROM products", function(err, res){
        if (err) throw err;
        console.table(res);
    
        inquirer
        .prompt([
        {
            name: "choice",
            type: "input",
                message: "How would you like to search for the item?",
                choices: [ "view all items",
                            "search by id #",
                            "search by category",
                            "quit"
                        ]
        }
    ])
}) .then(function(answer) {
    switch (answer.action) {
    case "View all items for sale":
    listItems()
    break

    case "Search with id#":
    chosenItem()
    break

    case "Quit":
    console.log("Good bye!")
    process.exit(-1)

    break

    }
}
)};
.then(function(answer){
    var chosenItem;
        for (var i=0; i < res.length; i++){
            if(res[i].item_id === answer.choice){chosenItem = res[i];
            }
        }

    if(chosenItem.stock_quantity < parseInt(answer.number)){
        console.log("the items are available")


        connection.query("UPDATE products SET ? WHERE ?",[
            {
                stock_quantity: number
            },
            {
                item_id: chosenItem
            }],
            function(error){
                if (error) throw err;
                console.log("Quantity puchased!");
                display();
            }
        );	
        }
       		
    else{
        console.log("not enough Quantity! Please make another selection.");
        display();
    }	
    });
