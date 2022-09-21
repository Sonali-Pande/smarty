<?php
	/**
	 * Example Application
	 *
	 * @package Example-application
	 */
	// session_start();
	// if(!empty($_SESSION['user_history'])){
	// 	session_destroy();
	// }
//  include('index.php');
	require 'libs/Smarty.class.php';
// array with foreach Iteration
	$smarty = new Smarty;
	// $smarty->assign('Contacts',
    // array('fax' => '555-222-9876',
    //       'email' => 'zaphod@slartibartfast.example.com',
    //       'phone' => array('home' => '555-444-3333',
    //                        'cell' => '555-111-1234')
    //                        )
    //      );
		 
		//  $smarty->assign('contacts', array(
		// 							 array('phone' => '555-555-1234',
		// 								   'fax' => '555-555-5678',
		// 								   'cell' => '555-555-0357'),
		// 							 array('phone' => '800-555-4444',
		// 								   'fax' => '800-555-3333',
		// 								   'cell' => '800-555-2222')
		// 							 ));

// function smarty_function_eightball($params)
// {
//     $answers = array('Yes',
//                      'No',
//                      'No way',
//                      'Outlook not so good',
//                      'Ask again soon',
//                      'Maybe in your reality');

//     $result = array_rand($answers);
//     return $answers[$result];
// }


//$smarty->assign('categories', smarty_function_eightball(10));	


$smarty->assign('Title', "Phsycics predict world didn't end");
$smarty->assign('articleTitle', 'next x-men film, x3, delayed.');
$smarty->assign('a',1);
//Data Format
$config['date'] = '%I:%M %p';
$config['time'] = '%H:%M:%S';
$smarty->assign('config', $config);
$smarty->assign('yesterday', strtotime('-1 day'));
//default
$smarty->assign('articleTitle', 'Dealers Will Hear Car Talk at Noon.');
$smarty->assign('email', '');
//escape
$smarty->assign('aTitle',
                "'Stiff Opposition Expected to Casketless Funeral Plan'"
                );
//indent 
$smarty->assign('TitleA',
                'NJ judge to rule on nude beach.
Sun or rain expected today, dark tonight.
Statistics show that teen pregnancy drops off significantly after 25.'
                );
$smarty->assign('Address','smarty@example.com');
//comining modifier

$smarty->assign('modifier', 'Smokers are Productive, but Death Cuts Efficiency.');

$smarty->display('index.tpl');
?>
