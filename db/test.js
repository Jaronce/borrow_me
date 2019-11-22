const getAddress =() => {

  $.get("https://www.randomlists.com/canadian-addresses?qty=150", function( document ) {
    Array.from(document.querySelector(".Rand-stage > ol.rand_large").getElementsByTagName("li")).map(li => li.innerText)
  });
  cosole.log(Array)
};


getAddress();










