var USERS = {};

USERS.show = function() {
    $("#usertable tr:gt(0)").remove();

    var table = $("#usertable");

    $.each(USERS.list, function (index, user) {
        table.append('<tr>'
            +'<td>' + user['name'] + '</td>'
            +'<td>' + user['age_group'] + '</td>'
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

$(document).ready(function () {
    $("#reverse").click(function (e) {
        USERS.reverse();
        USERS.show();
        e.preventDefault();
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
