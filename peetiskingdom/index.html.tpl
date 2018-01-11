<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="minimal-ui">
    
    <title>Spel</title>


    <!-- bower:js -->
    <!-- endinject -->

    <!-- vendors:js -->
    <!-- endinject -->

    <!-- dist:js -->
    <!-- endinject -->

    <!-- inject:js -->
    <!-- endinject -->

    <style>
        html {
            height: 100%;
        }
        
        body {
            background: url("img/whitenoise.png");
            padding: 0;
            margin: 0;

            color: white;

            max-height: 100vh;
            height: 100%;
        }

        #game {
            height: 100%;
        }

        #game canvas {
            margin-left: auto;
            margin-right: auto;
            
            position: relative;
            top: 50%;
            -webkit-transform: translateY(-50%);
                    transform: translateY(-50%);
            
        }

        #topBar {
            width: 100%;
            background: url("img/whitenoise-dark.png");

            position: absolute;
            left: 0;
            top: 0;
        }

        #topBar p {
            padding: 10px;
        }
    
        @media screen and (max-height: 850px) {
            #topBar {
                display: none;
            }
        }
    </style>

</head>
<body>
    <div id="topBar">
        <p>Press 'f11' to enter fullscreen. Up-arrrow for next page in dialogue (always try to press up because there is no indiciator as of yet that you should!)</p>
    </div>

    <div id="game"></div>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-58690043-1', 'auto');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
    </script>

    <script>
    window.onload = function() {
        if (typeof require !== 'undefined') {
            self._ = require('lodash');
        }

        var game = new Phaser.Game(1600, 900, Phaser.CANVAS, 'game');

        game.state.add('Game.Init', Game.Init);
        game.state.add('Game.MainMenu', Game.MainMenu);
        game.state.add('Game.Level', Game.Level);

        game.state.start('Game.Init');
    };
    </script>
</body>
</html>
