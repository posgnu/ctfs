var js_Jail = (function() {
    var jail_func = {};
    var caught_again = process.exit;

	var global,Error,EvalError,Function,Number,Object,RangeError,ReferenceError,SyntaxError,TypeError,URIError,decodeURI,decodeURIComponent,encodeURI,encodeURIComponent,ReferenceError;
	// you can't use in jail

	function imprison(){
		var flag = "flag is in 'flag.txt' ";
	        process.stdin.resume();
	        process.stdout.write("Can you escape my jail??\nShow me Your POWER!!!\n");
	        process.stdin.on('data', function(you) {
			jail_B1(you.toString());
	        });
	}

	function jail_B1(data){
		if(data.match(/[\[\]\.\\]/)){
			process.stdout.write("You got caught at jail_B1.\n");
			caught_again();
		}else{
			jail_B2(data);
		}
	}

	function jail_B2(data){
		if(data.split("=").length > 2){ // Someone help you to escape. so you can use one assignment.
			process.stdout.write("You got caught at jail_B2.\n");
			caught_again();	
		}else{
			jail_B3(data);
		}
	}
	function jail_B3(data){
		process.stdout.write("Escpae : " + eval(data));
		process.stdout.write("  OK...??\n");
		caught_again();
	}

	jail_func.imprison = imprison;
	jail_func.jail_B1  = jail_B1;
	jail_func.jail_B2  = jail_B2;
	jail_func.jail_B3  = jail_B3;
    return jail_func;
})();

js_Jail.imprison();