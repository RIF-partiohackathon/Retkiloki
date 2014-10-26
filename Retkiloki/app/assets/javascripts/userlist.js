var USERS = {};

var ikaluokat = {
    "Sudenpennut": 5,
    "Seikkalijat": 4,
    "Tarpojat": 3,
    "Samoajat": 2,
    "Vaeltajat": 1,
    "Aikuiset": 0
}

var lastClicked = {};

USERS.show = function() {
    $("#usertable tr:gt(0)").remove();

    var table = $("#usertable");

    $.each(USERS.list, function (index, user) {
        table.append('<tr>'
            +'<td>' + user['name'] + '</td>'
            +'<td>' + user['age_group']['group'] + '</td>'
            +'<td>' + user['phone'] + '</td>'
            +'<td>' + user['email'] + '</td>'
        +'</tr>');
    });

//    $("#users").html('<ul>' + user_list.join('') + '</ul>');
};

USERS.sort_by_name = function() {
    USERS.list.sort(function(a,b){
        return a.name.toUpperCase().localeCompare(b.name.toUpperCase());
    });
};

USERS.sort_by_age_group = function() {
    USERS.list.sort(function(a,b){
        return ikaluokat[a.age_group.group] < ikaluokat[b.age_group.group];
    });
};




$(document).ready(function () {

    $("#name").click(function (e) {
        USERS.sort_by_name();
        if (lastClicked == "#name") {
            USERS.list.reverse();
            lastClicked = "Hanki pliis vaikka elämä..."
        } else {
            lastClicked = "#name";
        };
        USERS.show();
        e.preventDefault();
        console.log(lastClicked);
    });

    $("#age_group").click(function (e) {
        USERS.sort_by_age_group();
        if (lastClicked == "#age_group") {
            USERS.list.reverse();
            lastClicked = "Senkin vähä-älyinen konsolia tuijottava kojootti!"
        } else {
            lastClicked = "#age_group";
        };
        USERS.show();
        e.preventDefault();
        console.log(lastClicked);
    });

    $.getJSON('users.json', function (users) {
        USERS.list = users;
        USERS.show();
    });
});


//        var user_list = [];
//
//        $.each(users, function (index, user) {
//            user_list.push('<li>' + user['name'] + '</li>')
//        });

//        $("#users").html('<ul>'+ user_list.join('') + '</ul>');
//    });
//});
