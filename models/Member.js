var db=require('../dbconnection');

var Member={

getAllMembers:function(callback){
	return db.query("Select * from members",callback);
},

getMemberById:function(id,callback){
    return db.query("select * from members where id=?",[id],callback);
},

addMember:function(Member,callback){
   console.log("inside service");
   console.log(Member.id);
return db.query("Insert into members values(?,?,?,?)",[Member.id,Member.username,Member.password,Member.avatar],callback);
},

deleteMember:function(id,callback){
    return db.query("delete from members where id=?",[id],callback);
},

updateMember:function(id,Member,callback){
    return  db.query("update members set username=?,password=?, avatar=? where id=?",[Member.username,Member.password,Member.avatar,Member.id,],callback);
},

deleteAll:function(item,callback){
var delarr=[];
   for(i=0;i<item.length;i++){
       delarr[i]=item[i].id;
   }
   return db.query("delete from members where id in (?)",[delarr],callback);
}
};

module.exports=Member;