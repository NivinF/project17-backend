var db=require('../dbconnection');

var Game ={

getAllGames:function(callback){
	return db.query("Select * from games",callback);
},

getGameById:function(id,callback){
    return db.query("select * from games where id=?",[id],callback);
},

addGame:function(Game,callback){
   console.log("inside service");
   console.log(Game.id);
return db.query("Insert into games values(?,?,?,?,?,?,?,?)",[Game.id,Game.title,Game.rating,Game.play_time,Game.language,Game.game_category_id,Game.nbr_players,Game.min_age],callback);
},

deleteGame:function(id,callback){
    return db.query("delete from games where id=?",[id],callback);
},

updateGame:function(id,Game,callback){
    return  db.query("update games set title=?,rating=?, play_time=?,language=?, game_category_id=?, nbr_players=?, min_age=? where id=?",[Game.title,Game.rating,Game.play_time,Game.language,Game.game_category_id,Game.nbr_players,Game.min_age, Game.id],callback);
},

deleteAll:function(item,callback){
var delarr=[];
   for(i=0;i<item.length;i++){
       delarr[i]=item[i].id;
   }
   return db.query("delete from games where id in (?)",[delarr],callback);
}
};

module.exports=Game;