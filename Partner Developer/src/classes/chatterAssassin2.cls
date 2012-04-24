public with sharing class chatterAssassin2 {

  public string postID{get;set;}
  
  public chatterAssassin2(){

    postID = '';
  }
  

  public void delPost(){
    FeedItem fi = [select id from FeedItem where id = :postID];
    delete fi;
  }
  public void delComment(){
    FeedComment fc = [select id from FeedComment where id = :postID];
    delete fc;
  }
}