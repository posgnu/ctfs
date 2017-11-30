const express = require('express');
const app = express();
const child_process = require('child_process');

app.use('/static', express.static('node_modules'));

app.use('/', express.static('public'));

app.use('/go', function (req, res) {
  var query = req.query;
  child_process.exec('python run.py '+query.addr+ ' && cat public/cc.json', function(err, stdout, stderr) {

    if (err) {
      console.log(err);
      // node couldn't execute the command
      return;
    }
    res.set('Content-Type', 'application/json');
    res.send(stdout);
  });

});



app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
