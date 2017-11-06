var express = require('express');
var router = express.Router();
var Game=require('../models/Game');

router.get('/:id?',function(req,res,next){
if(req.params.id){
    Game.getGameById(req.params.id,function(err,rows){

        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
}
else{
Game.getAllGames(function(err,rows){
        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
}
});

router.post('/',function(req,res,next){
        Game.addGame(req.body,function(err,count){
            //console.log(req.body);
            if(err){
                res.json(err);
            } else{
            res.json(req.body);//or return count for 1 & 0
            }
        });
});

 router.post('/:id',function(req,res,next){
  Game.deleteAll(req.body,function(err,count){
    if(err){
      res.json(err);
    }else{
      res.json(count);
    }
  });
});

router.delete('/:id',function(req,res,next){
        Game.deleteGame(req.params.id,function(err,count){
        if(err){
                res.json(err);
        }else{
                res.json(count);
            }
        });
});

router.put('/:id',function(req,res,next){
    Game.updateGame(req.params.id,req.body,function(err,rows){

        if(err){
            res.json(err);
        }else {
            res.json(rows);
        }
    });
});

module.exports=router;