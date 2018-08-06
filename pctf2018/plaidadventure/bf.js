var color = ["blue", "red", "green", "yellow"];



function c(newset, set_size, m, n, index) {
				    if (set_size == n){
										        for(var j = 0; j < 48; j++){
																		            var e = document.getElementById("win199_input");
																								            e.value = "touch " + newset[j];
																														            var ev = document.createEvent('Event');
																																				            ev.initEvent('keypress');
																																										            ev.which = ev.keyCode = 13;
																																																            e.dispatchEvent(ev)
																																																										        }

														        console.log(newset);

																		        return;
																						    }
						    else if(index == m) return;

								    c(newset, set_size, m, n, index+1);
										    newset[set_size] = color[index];
												    c(newset, set_size + 1,m, n, index);
}

var set = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

c(set,0,4,1,0);
