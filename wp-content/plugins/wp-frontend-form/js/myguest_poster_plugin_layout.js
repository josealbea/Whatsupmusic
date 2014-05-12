(function() {  
    tinymce.create('tinymce.plugins.wpgp_one_columns_12', {  
        init : function(ed, url) {  
            ed.addButton('wpgp_one_columns_12', {  
                title : 'Add a one column 12',  
                image : wpo_poster_plugin_url+ '/img/icon-12.png',
                onclick : function() {  
                     ed.selection.setContent('[wpgp_one_columns_12]<br/>...Your content...<br/>[/wpgp_one_columns_12] ');  
  
                }  
            });  
        },  
        createControl : function(n, cm) {  
            return null;  
        },  
    });  
    tinymce.PluginManager.add('wpgp_one_columns_12', tinymce.plugins.wpgp_one_columns_12);  
})();

(function() {  
    tinymce.create('tinymce.plugins.wpgp_two_columns_4_8', {  
        init : function(ed, url) {  
            ed.addButton('wpgp_two_columns_4_8', {  
                title : 'Add a two columns 4-8',  
                image : wpo_poster_plugin_url+ '/img/icon-4-8.png',
                onclick : function() {  
                	 var shortcode = '[wpgp_two_columns_4_8]<br/>';
                	 var col4 = '[wpgp_two_columns_4]<br/> ... Your content ... <br/>[/wpgp_two_columns_4]<br/>';	
                	 var col8 = '[wpgp_two_columns_8]<br/> ... Your content ... <br/>[/wpgp_two_columns_8]<br/>';
                	 shortcode = shortcode + col4 + col8 + '[/wpgp_two_columns_4_8]';
                     ed.selection.setContent(shortcode);  
  
                }  
            });  
        },  
        createControl : function(n, cm) {  
            return null;  
        },  
    });  
    tinymce.PluginManager.add('wpgp_two_columns_4_8', tinymce.plugins.wpgp_two_columns_4_8);  
})();

(function() {  
    tinymce.create('tinymce.plugins.wpgp_two_columns_6_6', {  
        init : function(ed, url) {  
            ed.addButton('wpgp_two_columns_6_6', {  
                title : 'Add a two columns 6-6',  
                image : wpo_poster_plugin_url+ '/img/icon-6-6.png',
                onclick : function() {  
               	 var shortcode = '[wpgp_two_columns_6_6]<br/>';
            	 var col6 = '[wpgp_two_columns_6]<br/> ... Your content ... <br/>[/wpgp_two_columns_6]<br/>';	
            	 shortcode = shortcode + col6 + col6 + '[/wpgp_two_columns_6_6]';
                 ed.selection.setContent(shortcode);  
                }  
            });  
        },  
        createControl : function(n, cm) {  
            return null;  
        },  
    });  
    tinymce.PluginManager.add('wpgp_two_columns_6_6', tinymce.plugins.wpgp_two_columns_6_6);  
})();

(function() {  
    tinymce.create('tinymce.plugins.wpgp_three_columns_4_4_4', {  
        init : function(ed, url) {  
            ed.addButton('wpgp_three_columns_4_4_4', {  
                title : 'Add a three columns 4-4-4',  
                image : wpo_poster_plugin_url+ '/img/icon-444.png',
                onclick : function() {  
                  	 var shortcode = '[wpgp_three_columns_4_4_4]<br/>';
                	 var col4 = '[wpgp_three_columns_4]<br/> ... Your content ... <br/>[/wpgp_three_columns_4]<br/>';	
                	 shortcode = shortcode + col4 + col4 + col4 + '[/wpgp_three_columns_4_4_4]';
                     ed.selection.setContent(shortcode);  
                }  
            });  
        },  
        createControl : function(n, cm) {  
            return null;  
        },  
    });  
    tinymce.PluginManager.add('wpgp_three_columns_4_4_4', tinymce.plugins.wpgp_three_columns_4_4_4);  
})();
