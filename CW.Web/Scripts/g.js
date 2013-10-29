function showerrormsg(msg) {
    Ext.MessageBox.show({
        title: '提示信息',
        msg: msg,
        icon:Ext.MessageBox.ERROR

    });
}

function guid() {
    var S4 = function () {
        return Math.floor(
                Math.random() * 0x10000 /* 65536 */
            ).toString(16);
    };

    return (
            S4() + S4() + "-" +
            S4() + "-" +
            S4() + "-" +
            S4() + "-" +
            S4() + S4() + S4()
        );
}

Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(), //day
        "h+": this.getHours(), //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
        "S": this.getMilliseconds() //millisecond
    }
    if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
(this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o) if (new RegExp("(" + k + ")").test(format))
        format = format.replace(RegExp.$1,
RegExp.$1.length == 1 ? o[k] :
("00" + o[k]).substr(("" + o[k]).length));
    return format;
}

function getcurrentorderno() {
   return new Date().format('yyyyMMddhhmmss');
}

function showsucmsg(msg) {
    Ext.MessageBox.show({
        title: '提示信息',
        msg: msg,
        icon: Ext.MessageBox.INFO

    });
}

function showconfirmmsg(msg) {


}

function getorderinfo(orderno) {
    var obj;
    $.ajax({
        url: '/order/getorder',
        type: 'POST',
        async: false,
        dataType: 'json',
        data: $.toJSON({ orderno: orderno }),
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            obj = data;

        }
    })

    return obj;

}

(function ($) {
    m = {
        '\b': '\\b',
        '\t': '\\t',
        '\n': '\\n',
        '\f': '\\f',
        '\r': '\\r',
        '"': '\\"',
        '\\': '\\\\'
    },
	$.toJSON = function (value, whitelist) {
	    var a,          // The array holding the partial texts.
			i,          // The loop counter.
			k,          // The member key.
			l,          // Length.
			r = /["\\\x00-\x1f\x7f-\x9f]/g,
			v;          // The member value.

	    switch (typeof value) {
	        case 'string':
	            return r.test(value) ?
                    '"' + value.replace(r, function (a) {
                        var c = m[a];
                        if (c) {
                            return c;
                        }
                        c = a.charCodeAt();
                        return '\\u00' + Math.floor(c / 16).toString(16) + (c % 16).toString(16);
                    }) + '"' :
                    '"' + value + '"';

	        case 'number':
	            return isFinite(value) ? String(value) : 'null';

	        case 'boolean':
	        case 'null':
	            return String(value);

	        case 'object':
	            if (!value) {
	                return 'null';
	            }
	            if (typeof value.toJSON === 'function') {
	                return $.toJSON(value.toJSON());
	            }
	            a = [];
	            if (typeof value.length === 'number' &&
                        !(value.propertyIsEnumerable('length'))) {
	                l = value.length;
	                for (i = 0; i < l; i += 1) {
	                    a.push($.toJSON(value[i], whitelist) || 'null');
	                }
	                return '[' + a.join(',') + ']';
	            }
	            if (whitelist) {
	                l = whitelist.length;
	                for (i = 0; i < l; i += 1) {
	                    k = whitelist[i];
	                    if (typeof k === 'string') {
	                        v = $.toJSON(value[k], whitelist);
	                        if (v) {
	                            a.push($.toJSON(k) + ':' + v);
	                        }
	                    }
	                }
	            } else {
	                for (k in value) {
	                    if (typeof k === 'string') {
	                        v = $.toJSON(value[k], whitelist);
	                        if (v) {
	                            a.push($.toJSON(k) + ':' + v);
	                        }
	                    }
	                }
	            }
	            return '{' + a.join(',') + '}';
	    }
	};

})(jQuery);