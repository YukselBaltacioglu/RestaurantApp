//
//  AppetizersVC.swift
//  RestaurantMenu
//
//  Created by Yüksel Baltacıoğlu on 4.11.2023.
//

import UIKit

class MenuTypeVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    var selectedMenu: [Food] = []
    var selectedButton = 0
    var images: [Food] = []
    var menuTitle: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch selectedButton {
        case 1:
            images = fetchData2()
            title = "Appetizers"
            configureViewTable()
        case 2:
            images = fetchData3()
            title = "Side Dishes"
            configureViewTable()
        case 3:
            images = fetchData4()
            title = "Main Courses"
            configureViewTable()
        case 4:
            images = fetchData5()
            title = "Children Menu"
            configureViewTable()
        case 5:
            images = fetchData6()
            title = "Desserts"
            configureViewTable()
        default:
            break
        }
//        images = fetchData2()
        //title = "Appetizers"
//        configureViewTable()
        
    }
    func configureViewTable(){
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(ImageCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! FoodDetailedVC
        destVC.selectedMenuItem = sender as? Food
    }


}
extension MenuTypeVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ImageCell
        let image = images[indexPath.row]
        cell.set(image: image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMenuItem = images[indexPath.row]
        performSegue(withIdentifier: "showDetailSeque", sender: selectedMenuItem)
        
    }
    
    
}

extension MenuTypeVC {
    
    func fetchData2() -> [Food]{
        let food1 = Food(image: Images.shishito, title: "BLISTERED SHISHITO PEPPERS", description: "Oven-roasted shishito peppers, with roasted herbs and black garlic, served with grilled flat bread", price: "$15")
        let food2 = Food(image: Images.calamari, title: "CALAMARI FRITTI", description: "Filed, crispy seasoned calamari with spicy marinara sauce", price: "$16")
        let food3 = Food(image: Images.shrimp, title: "DOLCE'E PICCANTE SHRIMP", description: "Sweet & spicy shrimp served over a bed of citric arugula", price: "$16")
        let food4 = Food(image: Images.zuppa, title: "ZUPPA TOSCANA", description: "Tuscan soup****spicy, Italian ground sausage, onions, garlic, potatoes, chopped kale with a rich, creamy chicken broth, topped with smoke bacon bits & grated parmesan cheese", price: "$9")
        let food5 = Food(image: Images.caesar, title: "CAESAR", description: "Caesar salad with shaved parmesan, homemade croutons, topped with anchovies and Caesar dressing", price: "$13")
        return [food1, food2, food3, food4, food5]
    }
    func fetchData3() -> [Food]{
        let food1 = Food(image: Images.asparagi, title: "ASPARAGI ALLA GRIGLIA", description: "Pan-seared fresh asparagus, virgin olive oil, garlic, basil, crushed red pepper & drizzled with balsamic glaze", price: "$10")
        let food2 = Food(image: Images.pasta, title: "PASTA ALIMENTARE", description: "Choice of fettuccini, bucatini or cheese ravioli", price: "$12")
        let food3 = Food(image: Images.fritte, title: "PATATINE FRITTI", description: "Crispy fries, served golden brown with sweet & sassy seasoning", price: "10$")
        let food4 = Food(image: Images.polpette, title: "POLPETTE", description: "Homemade meatballs tossed in a pomodoro sauce", price: "$12")
        let food5 = Food(image: Images.brussels, title: "BRUSSELS SPROUTS", description: "Pan-seared brussels sprouts in a sweet & sassy honey glaze, with smoked bacon drizzled balsamic glaze and parmesan cheese", price: "$10")
        let food6 = Food(image: Images.polenta, title: "POLENTA", description: "Porridge of ground corn, sauteed with fresh Italian herbs & mascarpone cheese", price: "$10")
        return [food1, food2, food3, food4, food5, food6]
    }
    
    func fetchData4() -> [Food]{
        let food1 = Food(image: Images.picante, title: "DOLCE E PICCANTE PESCE", description: "Pan-seared filet of salmon tossed in a sweet & sassy fresh herb mix, over a bed of fettuccine & creamy alfredo sauce", price: "$32")
        let food2 = Food(image: Images.parmagiana, title: "CHICKEN/VEAL PARMESAN", description: "Golden, deep-fried organic chicken or veal, with Italian-herb-seasoned breadcrumbs, topped with a rich, pomodoro sauce & mozzarella chee: over bucatini pasta", price: "$23/$25")
        let food3 = Food(image: Images.valle, title: "CHEF CRAIG SOUTHERN ITALIAN VALLE D'AOSTA", description: "Pan-seared, organic filet of chicken breast, with wilted spinach, sundried tomatoes, olives, wild-Italian-herb black risotto, with a Barolo-white wine reduction, topped with fontina cheese", price: "$30")
        let food4 = Food(image: Images.pomodori, title: "POMODORI VERDI FRITTI", description: "Fried green tomatoes in buttermilk, black garlic, smoked bacon and chipotle aioli", price: "$13")
        let food5 = Food(image: Images.corta, title: "COSTOLA CORTA BRASATE", description: "Marinated & slowly cooked braised short rib, with fresh Italian herbs, sweet chili, red demi-glaze, served over a bed of creamy polenta or crisp tri-color fingerling potatoes", price: "$35")
        let food6 = Food(image: Images.gamberi, title: "GAMBERI PICCANTI E POLENTA", description: "Pan-seared, black tiger shrimp, tri-color peppers, red onions, fresh Italian herbs, andouille sausage, Monterey jack cheese, on a bed of cream polenta", price: "$36")
        let food7 = Food(image: Images.londonVeri, title: "LONDON VERI", description: "14 oz. grilled ribeye steak, with honey, pepper glaze, topped with twin jumbo sweet & spicy shrimip and blistered, heirloom baby tomatoes", price: "$39")
        return [food1, food2, food3, food4, food5, food6, food7]
    }
    func fetchData5() -> [Food]{
        let food1 = Food(image: Images.cheRavioli, title: "CHEESE RAVIOLI AND MEATBALL", description: "", price: "$13")
        let food2 = Food(image: Images.fettAlf, title: "FETTUCINE ALFREDO", description: "", price: "$12")
        let food3 = Food(image: Images.tenderPasta, title: "CHICKEN TENDER PASTA", description: "Sweet & spicy shrimp served over a bed of citric arugula", price: "$12")
        let food4 = Food(image: Images.chcknParm, title: "CHICKEN PARMIGIANA & PASTA", description: "", price: "$13")
        let food5 = Food(image: Images.spaMeatball, title: "SPAGETTI AND MEATBALLS", description: "", price: "$13")
        return [food1, food2, food3, food4, food5]
    }
    func fetchData6() -> [Food]{
        let food1 = Food(image: Images.brownie, title: "BROWNIE CALDO", description: "Warm brownie with vanilla gelato, whipped cream and chocolate sauce", price: "$11")
        let food2 = Food(image: Images.gelato, title: "TRIO GELATO", description: "Mascarpone, chocolate, strawberry", price: "$12")
        let food3 = Food(image: Images.cannolis, title: "CANNOLIS", description: "Fried pastry dough with a sweet creamy ricotta cheese filling", price: "$10")
        let food4 = Food(image: Images.tiramisu, title: "TORTA TIRAMISU", description: "Ladyfinger soaked with coffee & rum, whipped mixture of sweet, creamy, mascarpone cheese and sprinkled with cocoa", price: "$12")
        return [food1, food2, food3, food4]
    }
}
