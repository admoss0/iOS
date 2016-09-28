//
//  ViewController.swift
//  Table App
//
//  Created by David Moss on 8/01/2016.
//  Copyright © 2016 David Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
 
    var organisations = [String]()
   
       //  var url = NSURL(string: "http://admoss.info")!
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        organisations = getOrgs()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getOrgs() -> [String] {
           var t = [String]()
        let myCode = "http://semantic-admoss.rhcloud.com/ds/query?query=select+%3Fo+where+%7B+%3Fs+%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Felements%2F1.1%2Ftitle%3E+%3Fo%7D+LIMIT+5&output=csv"
        
        
        
        let url = NSURL(string: myCode)
        
        
        let bot = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            if let realData = data {
                let webContent = NSString(data: realData, encoding: NSUTF8StringEncoding)
                
               t.sort() = webContent!.componentsSeparatedByString("\r\n")
            }
            else {
                print("Crap, its broken " + String(error!))
            }
        }
        
        bot.resume()
        
        print(t)
        
       return t
        
    }
    
    
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return organisations.count
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = self.organisations[indexPath.row]
        return cell
        
    }
    
    func setup() -> [String]  {
        
        
        let data = "http://admoss.info/apr/org/org#71,Menzies Research Centre;http://admoss.info/apr/org/org#50,Families and Friends for Drug Law Reform;http://admoss.info/apr/org/org#153,Pirate Party of Australia;http://admoss.info/apr/org/org#29,Climate Institute Australiahttp://admoss.info/apr/org/org#132,Just Rights Queensland;http://admoss.info/apr/org/org#111,Make Poverty History Sydney Volunteer Group ;http://admoss.info/apr/org/org#79,NSW Council for Civil Liberties;http://admoss.info/apr/org/org#58,Australians for Constitutional Monarchy;http://admoss.info/apr/org/org#161,Australian New Nation;http://admoss.info/apr/org/org#37,Australian Fabian Society;http://admoss.info/apr/org/org#140,Proportional Representation Society of Australia;http://admoss.info/apr/org/org#16,Australia United;http://admoss.info/apr/org/org#119,Friends Of The Earth Australia;http://admoss.info/apr/org/org#6,Humanist Society of New South Wales;http://admoss.info/apr/org/org#87,Australian Shooters' Party;http://admoss.info/apr/org/org#66,Greenfields Foundation;http://admoss.info/apr/org/org#45,Grey Power;http://admoss.info/apr/org/org#148,Senator On-Line;http://admoss.info/apr/org/org#24,Foster Care Queensland ;http://admoss.info/apr/org/org#127,Darwin Research Center ;http://admoss.info/apr/org/org#106,Socialist Equality Party;http://admoss.info/apr/org/org#95,Liberal Democratic Party ;http://admoss.info/apr/org/org#74,Australian Political Studies Association;http://admoss.info/apr/org/org#53,Citizens Initiated Referenda;http://admoss.info/apr/org/org#156,Senator Online;http://admoss.info/apr/org/org#32,Institute for Private Enterprise;http://admoss.info/apr/org/org#135,National Seniors Association;http://admoss.info/apr/org/org#11,Mens Rights Agency ;http://admoss.info/apr/org/org#114,Australian Injecting and Illicit Drug Users League;http://admoss.info/apr/org/org#82,Australians Against Further Immigration;http://admoss.info/apr/org/org#61,Action for Public Transport (NSW) ;http://admoss.info/apr/org/org#40,Australian Monarchist League;http://admoss.info/apr/org/org#143,Business Council of Australia;http://admoss.info/apr/org/org#19,Resistance ;http://admoss.info/apr/org/org#122,Thomas More Centre ;http://admoss.info/apr/org/org#101,Nuclear Disarmament Party ;http://admoss.info/apr/org/org#9,National Women's Justice Coalition ;http://admoss.info/apr/org/org#90,Communist Party of Australia ;http://admoss.info/apr/org/org#69,Institute of Public Affairs;http://admoss.info/apr/org/org#48,Industrial Workers of the World;http://admoss.info/apr/org/org#151,Nationalist Alternative;http://admoss.info/apr/org/org#27,Australians for Native Title and Reconciliation;http://admoss.info/apr/org/org#130,Sustainable Population Australia;http://admoss.info/apr/org/org#109,Transparency International Australia;http://admoss.info/apr/org/org#98,One Nation;http://admoss.info/apr/org/org#77,EROS Association;http://admoss.info/apr/org/org#56,Australian National Flag Association;http://admoss.info/apr/org/org#159,The Climate Institute;http://admoss.info/apr/org/org#35,Centre for Independent Studies;http://admoss.info/apr/org/org#14,National Republicans ;http://admoss.info/apr/org/org#138,Country Liberal Party;http://admoss.info/apr/org/org#117,GetUp!;http://admoss.info/apr/org/org#4,Australian Christian Lobby ;http://admoss.info/apr/org/org#85,Australia First Party;http://admoss.info/apr/org/org#64,Wilderness Society;http://admoss.info/apr/org/org#43,Samuel Griffith Society ;http://admoss.info/apr/org/org#22,Queensland Right To Life;http://admoss.info/apr/org/org#146,Australian Fishing and Lifestyle Party;http://admoss.info/apr/org/org#125,Tasman Institute;http://admoss.info/apr/org/org#104,Conservatives for Climate and Environment;http://admoss.info/apr/org/org#93,Family First;http://admoss.info/apr/org/org#72,Democracy Watch;http://admoss.info/apr/org/org#51,Endeavour Forum;http://admoss.info/apr/org/org#30,Sydney Institute;http://admoss.info/apr/org/org#154,Restore the Workers Rights Party;http://admoss.info/apr/org/org#133,Bravehearts;http://admoss.info/apr/org/org#112,Darfur Human Rights and Development Organisation of Australia;http://admoss.info/apr/org/org#80,Lavoisier Group;http://admoss.info/apr/org/org#59,Australian Coalition for Economic Justice;http://admoss.info/apr/org/org#38,Australia Institute;http://admoss.info/apr/org/org#141,Australian Protectionist Party;http://admoss.info/apr/org/org#17,Australian Nationalism Information Database;http://admoss.info/apr/org/org#120,Child Wise;http://admoss.info/apr/org/org#7,Festival of Light ;http://admoss.info/apr/org/org#88,Christian Democratic Party;http://admoss.info/apr/org/org#67,Chifley Research Centre;http://admoss.info/apr/org/org#46,Friends of the ABC;http://admoss.info/apr/org/org#149,The Climate Sceptics;http://admoss.info/apr/org/org#25,Australian Child Protection Alliance;http://admoss.info/apr/org/org#128,Australian Strategic Policy Institute;http://admoss.info/apr/org/org#107,Fight dem back!;http://admoss.info/apr/org/org#96,Socialist Alliance;http://admoss.info/apr/org/org#75,Australian Privacy Foundation;http://admoss.info/apr/org/org#54,Australian Republican Movement;http://admoss.info/apr/org/org#157,Secular Party of Australia;http://admoss.info/apr/org/org#33,H.R. Nicholls Society;http://admoss.info/apr/org/org#136,CREATE Foundation;http://admoss.info/apr/org/org#12,Stormfront Downunder ;http://admoss.info/apr/org/org#115,Elder Abuse Prevention Association;http://admoss.info/apr/org/org#83,Australian Business Party;http://admoss.info/apr/org/org#62,Abolish the States Collective;http://admoss.info/apr/org/org#41,Trade Union Movement ;http://admoss.info/apr/org/org#20,Electronic Frontiers Australia ;http://admoss.info/apr/org/org#144,Centre for Policy Development;http://admoss.info/apr/org/org#123,Refugee Action Committee;http://admoss.info/apr/org/org#102,Non-Custodial Parents Party ;http://admoss.info/apr/org/org#91,Democratic Labor Party ;http://admoss.info/apr/org/org#70,Page Research Centre;http://admoss.info/apr/org/org#49,HS Chapman Society;http://admoss.info/apr/org/org#152,Western Australia First;http://admoss.info/apr/org/org#28,Public Policy Assessment Society ;http://admoss.info/apr/org/org#131,National Foundation for Australian Women;http://admoss.info/apr/org/org#110,Whistleblowers Australia;http://admoss.info/apr/org/org#99,What Women Want;http://admoss.info/apr/org/org#78,Queensland Council for Civil Liberties;http://admoss.info/apr/org/org#57,Australian Council of Social Service;http://admoss.info/apr/org/org#160,Emilys List;http://admoss.info/apr/org/org#36,Brisbane Institute;http://admoss.info/apr/org/org#15,Australian Libertarian Society ;http://admoss.info/apr/org/org#139,Australian Federation of Islamic Councils;http://admoss.info/apr/org/org#118,Sydney Peace and Justice Coalition ;http://admoss.info/apr/org/org#5,Australian Counter-Fundamentalism Movement;http://admoss.info/apr/org/org#86,Australian Men's Party;http://admoss.info/apr/org/org#65,People Against Lenient Sentencing;http://admoss.info/apr/org/org#44,Sporting Shooters Association of Australia;http://admoss.info/apr/org/org#147,Australian Sex party;http://admoss.info/apr/org/org#23,Justice Action;http://admoss.info/apr/org/org#126,Independent Candidate's Advisory Network;http://admoss.info/apr/org/org#105,Climate Change Coalition;http://admoss.info/apr/org/org#94,The Greens;http://admoss.info/apr/org/org#73,Democracy4Sale;http://admoss.info/apr/org/org#52,Cyclists Rights Action Group ;http://admoss.info/apr/org/org#155,Outdoor Recreation Party;http://admoss.info/apr/org/org#31,Menzies Foundation;http://admoss.info/apr/org/org#134,Australian Policy Online;http://admoss.info/apr/org/org#10,Womens Electoral Lobby ;http://admoss.info/apr/org/org#113,Peace Brigades International Australia;http://admoss.info/apr/org/org#81,Australian Conservation Foundation;http://admoss.info/apr/org/org#60,Australian Chamber of Commerce and Industry;http://admoss.info/apr/org/org#163,Socialist Alternative;http://admoss.info/apr/org/org#39,Anarchism ;http://admoss.info/apr/org/org#142,Daylight Saving for South East Queensland;http://admoss.info/apr/org/org#18,Australian League of Rights ;http://admoss.info/apr/org/org#121,Reconciliation Australia;http://admoss.info/apr/org/org#100,Pauline's United Australia Party;http://admoss.info/apr/org/org#89,Citizens Electoral Council ;http://admoss.info/apr/org/org#68,Lowy Institute for International Policy;http://admoss.info/apr/org/org#47,Local Energy Trading Systems;http://admoss.info/apr/org/org#150,Stable Population party of Australia;http://admoss.info/apr/org/org#26,Australia West Papua Association ;http://admoss.info/apr/org/org#129,ACT for Kids;http://admoss.info/apr/org/org#108,Watch on Censorship;http://admoss.info/apr/org/org#97,Socialist Party of Australia;http://admoss.info/apr/org/org#76,Mannkal Foundation ;http://admoss.info/apr/org/org#55,Australian Local Government Association;http://admoss.info/apr/org/org#34,Evatt Foundation;http://admoss.info/apr/org/org#158,Search Foundation;http://admoss.info/apr/org/org#13,RADNAT ;http://admoss.info/apr/org/org#137,Liberal National Party;http://admoss.info/apr/org/org#116,Progressive Labour Party;http://admoss.info/apr/org/org#84,Australian Democrats;http://admoss.info/apr/org/org#63,National Farmers Federation;http://admoss.info/apr/org/org#42,Solidarity Philippines Australia Network;http://admoss.info/apr/org/org#21,Amnesty International;http://admoss.info/apr/org/org#145,Australian Family Association;http://admoss.info/apr/org/org#124,National Civic Council;http://admoss.info/apr/org/org#103,Liberty and Democracy Party"
        
        let stuff = data.componentsSeparatedByString(";")
        var output = [String]()
    
        
        
        
        for x in stuff {
            
            output.append (x.componentsSeparatedByString(",")[1])
            
            
        }
        output.sortInPlace()
        
        return output

    }
    
}


