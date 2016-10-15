$(function () {
    var $txt = $('input[id$=txtKCName]');
    var $ddl = $('select[id$=ddlKCName]');
    var $items = $('select[id$=ddlKCName] option');

    $txt.keyup(function () {
        searchDdl($txt.val());
    });

    function searchDdl(item) {
        $ddl.empty();
        var exp = new RegExp(item, "i");
        var arr = $.grep($items,
                    function (n) {
                        return exp.test($(n).text());
                    });

        if (arr.length > 0) {
            countItemsFound(arr.length);
            $.each(arr, function () {
                $ddl.append(this);
                $ddl.get(0).selectedIndex = -1;
            }
                    );
        }
        else {
            countItemsFound(arr.length);
            $ddl.append("<option>No Items Found</option>");
        }
    }

    function countItemsFound(num) {
        $("#para").empty();
        if ($txt.val().length) {
            $("#para").html(num + " items found");
        }

    }
});