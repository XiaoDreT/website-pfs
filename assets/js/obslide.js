var $obslaid = document.getElementById('obslaid').getElementsByTagName('img'),
        j = 0, s = 0;
function geserdikit() {
    for (var c = 0; c < $obslaid.length; c++) {
        $obslaid[c].style.left = (c - 1) * 100 + '%';
        $obslaid[s + 1].className = 'img-responsive centerr';
    };
};
geserdikit();
var timer = setInterval(function () {
    if (j >= 50) {
        s++;
        if (s < $obslaid.length - 1) {
            $obslaid[s - 1].style.left = (s - 1) * 100 + '%';
        }
        j = 0;
        document.getElementById('obslaid').className = 'col-sm-12';
        for (var c = 0; c < $obslaid.length; c++) {
            $obslaid[c].style.left = (c - 1 - s) * 100 + '%';
            $obslaid[c].className = 'img-responsive';
        };
        if (s < $obslaid.length) {
            $obslaid[s + 1].className = 'img-responsive centerr';
        }
        if (s === $obslaid.length - 2) {
            document.getElementById('obslaid').className = 'col-sm-12 nomot';
            s = 0; geserdikit(); j = 51;
        }
    }
    j++;
}, 100);

//mulai memanah
var $panahKiri = document.getElementById("ll"),
    $panahKanan = document.getElementById("rr"),
    panahKiriklik = function () {
        if (s === 0) {
            document.getElementById('obslaid').className = 'col-sm-12 nomot';
            j = 49; s = $obslaid.length - 5;
        } else if (s === 1) {
            s = 0;
            for (var c = 0; c < $obslaid.length; c++) {
                $obslaid[c].className = 'img-responsive';
            };
            geserdikit();
        } else {
            s = s - 2; j = 49;
        }
    },
    panahKananklik = function () {
        s + 1; j = 49;
    };

$panahKiri.addEventListener("click", panahKiriklik, false);
$panahKanan.addEventListener("click", panahKananklik, false);

var navObslaid = document.getElementById("nav-$obslaid");
