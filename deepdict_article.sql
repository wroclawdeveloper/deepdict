INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (3, 'Continuous deployment', '<p>Continuous deployment is a strategy for&nbsp;software releases wherein any code commit that passes the automated testing phase is automatically&nbsp;released&nbsp;into the production environment, making changes that are visible to the software&#39;s users.</p>

<p>Continuous deployment eliminates the human safeguards against unproven code in live software. It should only be implemented when the development and IT teams rigorously adhere to production-ready development practices and thorough testing, and when they apply sophisticated, real-time monitoring in production to discover any issues with new releases.</p>', '2018-09-23 21:45:59', '2018-09-23 21:45:59', 1, 'https://searchitoperations.techtarget.com/definition/continuous-deployment');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (1, 'mysqldump', '<p>mysqldump -u varicouser -p YetiCRM1 &gt; YetiCRM1_prod_backup_after.sql</p>

<p>localhost:<br />
c:/wamp64/bin/mysql/mysql5.7.21/bin/mysql.exe<br />
c:/wamp64/bin/mysql/mysql5.7.21/bin/mysql.exe -u root -p db1 &lt; c:/wamp64/www/YetiCRM1_backup_prod.sql</p>', '2018-09-24 11:43:39', '2018-09-24 11:43:39', 1, 'http');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (1, 'JavaScript Engine', '<p>A JavaScript engine is a kind of process virtual machine that is designed specifically to interpret and execute JavaScript code. It&rsquo;s important to differentiate between the layout engines that power a browser by structuring a Web page, versus the lower level JavaScript engines that interpret and execute code.</p>

<p><strong>What is a JavaScript Engine?</strong><br />
The basic job of a JavaScript engine is to take the JavaScript code that a developer writes and convert it to fast, optimized code that can be interpreted by a browser or even embedded into an application.</p>

<p>More precisely, each JavaScript engine implements a version of ECMAScript, of which JavaScript is a dialect. As ECMAScript evolves, so do JavaScript engines. There are so many different engines because each one is designed to work with a different Web browser, headless browser, or runtime like Node.js. Headless browsers are Web browsers without a graphic user interface that are useful for running automated tests against Web products. A good example is PhantomJS. Node.js is an asynchronous, event-driven framework that allows JavaScript to be used on the server side. Since these are JavaScript-driven tools, they are powered by JavaScript engines.</p>

<p>A variety of JavaScript engines are available to analyze, parse, and execute client-side code. With every browser version release, the JavaScript engine might be changed or optimized to keep up with the state-of-the-art JavaScript code execution.</p>

<p><strong>How Does a JavaScript Engine Work?</strong><br />
Given the definition of a virtual machine, it makes sense to term a JavaScript engine as a process virtual machine, since its sole purpose is to read and compile JavaScript code. This doesn&rsquo;t mean that it&rsquo;s a simple engine. JavaScriptCore, for example, has six building blocks that analyze, interpret, optimize, and garbage collect JavaScript code.</p>

<p>So how does this work? This depends, of course, on the engine. The two main engines of interest are WebKit&rsquo;s JavaScriptCore and Google&rsquo;s V8 engine because they are leveraged by NativeScript. These two engines handle processing code differently.</p>', '2018-09-25 19:53:05', '2018-09-25 19:53:05', 1, 'http://www.softwaremag.com/javascript-engines/');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (1, 'Interview', '<p><em>From what I read, your company is one of the leaders in providing security software to other businesses. I read the list of clients on your website. Do you mostly serve Fortune 500 clients?</em></p>', '2018-09-27 13:24:08', '2018-09-27 13:24:08', 1, 'https://careersidekick.com/what-to-say-in-a-job-interview-questions-and-answers/');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (1, 'Install', '<p>curl -sS https://getcomposer.org/installer | php7.1<br />
php7.1 composer.phar --version<br />
php7.1 composer.phar require phpmailer/phpmailer<br />
php7.1 composer.phar require <strong>phpunit/phpunit</strong></p>

<pre>
php7.1 vendor/bin/phpunit</pre>

<pre>
php7.1 vendor/bin/phpunit tests/EmailTest.php</pre>

<p>php7.1 composer.phar require phpdocumentor/reflection-docblock ~2.0<br />
php7.1 composer.phar require --dev phpdocumentor/phpdocumentor dev-master</p>', '2018-10-01 15:58:05', '2018-10-01 15:58:05', 1, 'https://www.drupal.org/docs/8/phpunit/running-phpunit-tests');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (2, 'Back-end', '<p>PHP Developers are part of the Back-end Developers team, writing code for the server side of web applications. They develop back-end components, connect applications with other (often third-party) web services and support the Front-end Developers by integrating their work.</p>', '2018-10-02 20:12:45', '2018-10-02 20:12:45', 1, 'https://www.codementor.io/blog/php-interview-questions-sample-answers-du1080ext');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (2, 'MVC', '<p>MVC stands for Model View Controller.<br />
The controller handles data passed to it by the view and also passes data to the view. It&rsquo;s responsible for interpretation of the data sent by the view and dispersing that data to the appropriate models awaiting results to pass back to the view. Very little, if any business logic should be occurring in the controller.</p>

<p>The model&rsquo;s job is to handle specific tasks related to a specific area of the application or functionality. Models will communicate directly with your database or other storage system and will handle business logic related to the results.</p>

<p>The view is passed data by the controller and is displayed to the user.</p>

<p>Overall, this question is worth knowing as the MVC design pattern has been used a lot in the last few years and is a very good design pattern to know. Even with more advanced flows that go down to repositories and entities, they still are following the same basic idea for the Controller and View. The Model is typically just split out into multiple components to handle specific tasks related to database data, business logic etc. The MVC design pattern helps draw a better understanding of what is being used, as a whole, in the industry.</p>', '2018-10-02 20:42:59', '2018-10-02 20:42:59', 1, 'https://www.codementor.io/blog/php-interview-questions-sample-answers-du1080ext');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (6, 'CKEditor', '<p>#</p>', '2018-10-03 15:17:51', '2018-10-03 15:17:51', 1, 'https://git.higidi.com/TYPO3/TYPO3.CMS/commit/c762b3871ecaf4731a7c5172a0f91aad429a685c');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (1, 'Web Coding Style Service', '<p>StyleCI provides checks for both your open and closed source repos. By analyzing every push or pull request made on your codebase, StyleCI ensures that your code is always written against the standards you want it to be.</p>', '2018-10-05 15:43:31', '2018-10-05 15:43:31', 1, 'https://docs.styleci.io/');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (5, 'Tools', '<p>$ composer global require &quot;squizlabs/php_codesniffer=*&quot;<br />
Changed current directory to C:/Users/admin/AppData/Roaming/Composer<br />
&nbsp;</p>', '2018-10-05 21:59:10', '2018-10-05 21:59:10', 1, 'https://confluence.jetbrains.com/display/PhpStorm/PHP+Code+Sniffer+in+PhpStorm');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (9, 'Global installation of PHP tools with Composer', '<table>
	<tbody>
		<tr>
			<td>
			<p>2</p>

			<p>3</p>

			<p>4</p>

			<p>5</p>

			<p>6</p>

			<p>7</p>

			<p>8</p>
			</td>
			<td>
			<p>$ composer global require phpunit/phpunit</p>

			<p>$ composer global require phpunit/dbunit</p>

			<p>$ composer global require phing/phing</p>

			<p>$ composer global require phpdocumentor/phpdocumentor</p>

			<p>$ composer global require sebastian/phpcpd</p>

			<p>$ composer global require phploc/phploc</p>

			<p>$ composer global require phpmd/phpmd</p>

			<p>$ composer global require squizlabs/php_codesniffer</p>
			</td>
		</tr>
	</tbody>
</table>', '2018-10-06 08:50:43', '2018-10-06 08:50:43', 1, 'https://akrabat.com/global-installation-of-php-tools-with-composer/');
INSERT INTO deepdict.article (category_id, title, content, created_at, updated_at, user_id, link) VALUES (9, 'Package guzzle/guzzle is abandoned, you should avoid using it. Use guzzlehttp/guzzle instead.', '<pre>
composer why guzzle/guzzle</pre>', '2018-10-06 11:04:48', '2018-10-06 11:04:48', 1, 'https://git.freepbx.org/projects/FREEPBX/repos/devtools/browse/vendor/knplabs/github-api');