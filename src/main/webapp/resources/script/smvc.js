function _SMVC(){

    this.deletePerson = function(id){
        if (confirm("Are you sure?")){
            window.location = "/deletePerson/" + id;
        }
    }

}

var SMVC = new _SMVC();