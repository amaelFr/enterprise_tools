LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES 
(0,'aio_wp_security_configs','a:94:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:1:\"1\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";i:3;s:24:\"aiowps_retry_time_period\";i:60;s:26:\"aiowps_lockout_time_length\";i:180;s:28:\"aiowps_set_generic_login_msg\";s:1:\"1\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:17:\"vagrant@127.0.0.1\";s:27:\"aiowps_enable_forced_logout\";s:1:\"1\";s:25:\"aiowps_logout_time_period\";i:60;s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:4:{i:0;s:4:\"root\";i:1;s:5:\"admin\";i:2;s:14:\"administrateur\";i:3;s:13:\"administrator\";}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"ujw6i4q4aadufh5nlbub\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"wblqfv2k3q8jjjazg2h5\";s:42:\"aiowps_enable_manual_registration_approval\";s:1:\"1\";s:39:\"aiowps_enable_registration_page_captcha\";s:1:\"1\";s:35:\"aiowps_enable_registration_honeypot\";s:1:\"1\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:17:\"vagrant@127.0.0.1\";s:27:\"aiowps_disable_file_editing\";s:1:\"1\";s:37:\"aiowps_prevent_default_wp_file_access\";s:1:\"1\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:1:\"1\";s:27:\"aiowps_max_file_upload_size\";i:10;s:31:\"aiowps_enable_pingback_firewall\";s:1:\"1\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:1:\"1\";s:34:\"aiowps_block_debug_log_file_access\";s:1:\"1\";s:26:\"aiowps_disable_index_views\";s:1:\"1\";s:30:\"aiowps_disable_trace_and_track\";s:1:\"1\";s:28:\"aiowps_forbid_proxy_comments\";s:1:\"1\";s:29:\"aiowps_deny_bad_query_strings\";s:1:\"1\";s:34:\"aiowps_advanced_char_string_filter\";s:1:\"1\";s:25:\"aiowps_enable_5g_firewall\";s:1:\"1\";s:25:\"aiowps_enable_6g_firewall\";s:1:\"1\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:1:\"1\";s:28:\"aiowps_enable_404_IP_lockout\";s:1:\"1\";s:30:\"aiowps_404_lockout_time_length\";i:60;s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:1:\"1\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:13:\"aiowps_secret\";s:24:\"aiowps_cookie_brute_test\";s:29:\"aiowps_cookie_test_tds80ctkqr\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:1:\"1\";s:33:\"aiowps_spam_ip_min_comments_block\";i:3;s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:1:\"1\";s:25:\"aiowps_fcd_scan_frequency\";i:4;s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:17:\"vagrant@127.0.0.1\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:1:\"1\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:1:\"1\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:28:\"aiowps_block_fake_googlebots\";s:1:\"1\";s:26:\"aiowps_cookie_test_success\";s:1:\"1\";}','yes');
UNLOCK TABLES;
