# DB Exercise 4
#### Group
Mads Dam Eckardt Jensen & Andreas Uldall Leonhard

## How we did
We use MongoDB 3.4 for our project. To import the .csv-file we constructed the following command:
*mongoimport --db=exercise4 --file training.1600000.processed.noemoticon.csv --type=csv --collection=tweets --headerline*

We choosed to make a Ruby on Rails project in order to present a web-based UI. We have one model in our project *tweet.rb*, which is connected to the collection tweets in our database. We use this model to query the database.  The current configuration expects the database to be named *exercise4* and the collection of the tweets to be named *tweets*. 

For all the exercises we utilize MongoDB’s aggregation framework.  All our queries are executed from the controller */app/controllers/main_controller.rb*. 


## Results
#### How many Twitter users are in our database?
659774

#### Which Twitter users link the most to other Twitter users?
| Username        | Links |
|-----------------|-------|
| lost_dog        | 549   |
| tweetpet        | 310   |
| VioletsCRUK     | 251   |
| what_bugs_u     | 246   |
| tsarnick        | 245   |
| SallytheShizzle | 229   |
| mcraddictal     | 217   |
| Karen230683     | 216   |
| keza34          | 211   |
| TraceyHewins    | 202   |


#### Who is are the most mentioned Twitter users?
| Username        | Occurrences |
|-----------------|-------------|
| mileycyrus      | 4310        |
| tommcfly        | 3837        |
| ddlovato        | 3349        |
| Jonasbrothers   | 1263        |
| DavidArchie     | 1222        |
| jordanknight    | 1105        |
| DonnieWahlberg  | 1085        |
| JonathanRKnight | 1053        |
| mitchelmusso    | 1038        |
| taylorswift13   | 973         |

#### Who are the most active Twitter users?
| Username        | Tweets |
|-----------------|--------|
| lost_dog        | 549    |
| webwoke         | 345    |
| tweetpet        | 310    |
| SallytheShizzle | 281    |
| VioletsCRUK     | 279    |
| mcraddictal     | 276    |
| tsarnick        | 248    |
| what_bugs_u     | 246    |
| Karen230683     | 238    |
| DarkPiano       | 236    |

#### Who are the five most grumpy users (most negative tweets)?
| Username        | Polarity |
|-----------------|----------|
| 2Hood4Hollywood | 0        |
| mimismo         | 0        |
| Karoli          | 0        |
| coZZ            | 0        |
| joy_wolf        | 0        |
| ElleCTF         | 0        |
| scotthamilton   | 0        |
| _TheSpecialOne_ | 0        |
| mattycus        | 0        |
| mybirch         | 0        |

#### Who are the five most happy users (most positive tweets)?
| Username      | Polarity |
|---------------|----------|
| _EmilyYoung   | 4        |
| katarinka     | 4        |
| jessicavaliyi | 4        |
| ajarofalmonds | 4        |
| becca210      | 4        |
| vmdavinci     | 4        |
| SherylBreuker | 4        |
| emmasaur28    | 4        |
| Wingman29     | 4        |
| ersle         | 4        |

## Screenshots
![](screenhots/screen1.png) 

![](screenhots/screen2.png) 

![](screenhots/screen3.png) 