INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Primary key in MySQL', 'is use to identify every row of a table in unique manner. For one table there is only one primary key. One of the candidate keys is the primary key and the candidate keys can be used to reference the foreign keys.', '2018-09-22 16:08:20', '2018-09-22 16:08:20', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('What are the different types of tables in MySQL?', '<p>MyISAM is the default table that is based on the sequential access method.</p>

<ul>
	<li><strong>HEAP</strong> is the table that is used for fast data access but data will be lost if the table or system crashes.<strong>&nbsp;</strong></li>
	<li><strong>InoDB</strong> is the table that supports transactions using the COMMIT and ROLL BACK commands.</li>
	<li><strong>BDB</strong> can support transactions similar to InoDB but the execution is slower.</li>
</ul>', '2018-09-22 16:45:44', '2018-09-22 16:45:44', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('The following TRIGGERS are allowed in MySQL', '<ul>
	<li>BEFORE INSERT</li>
	<li>AFTER INSERT</li>
	<li>BEFORE UPDATE</li>
	<li>&nbsp;AFTER UPDATE</li>
	<li>&nbsp;BEFORE DELETE</li>
	<li>&nbsp;AFTER DELETE</li>
</ul>', '2018-09-22 20:31:43', '2018-09-22 20:31:43', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('In such cases when the password is lost', '<p>the user should start the DB with &ndash; skip-grants-table and then change the password. Thereafter with the new password the user should restart the DB in normal mode.</p>', '2018-09-22 20:42:53', '2018-09-22 20:42:53', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('DELETE vs TRUNCATE TABLE', '<p>Basically DELETE TABLE is logged operation and every row deleted is logged. Therefore the process is usually slow. TRUNCATE TABLE also deletes rows in a table but it will not log any of the rows deleted. &nbsp;The process is faster in comparison. TRUNCATE TABLE can be rolled back and is functionally similar to the DELETE statement using no WHERE clause.</p>', '2018-09-22 20:44:09', '2018-09-22 20:44:09', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Following are differences for FLOAT and DOUBLE:', '<p>&bull; Floating point numbers are stored in FLOAT with eight place accuracy and it has four bytes.</p>

<p>&bull; Floating point numbers are stored in DOUBLE with accuracy of 18 places and it has eight bytes.</p>', '2018-09-23 13:10:27', '2018-09-23 13:10:27', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('TIMESTAMP column', '<p>TIMESTAMP column is updated with Zero when the table is created. &nbsp;UPDATE CURRENT_TIMESTAMP modifier updates the timestamp field to<strong>&nbsp;</strong>&nbsp;current time whenever there is a change in other&nbsp;fields&nbsp;of the table.</p>', '2018-09-23 13:13:48', '2018-09-23 13:13:48', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('LAST_INSERT_ID', '<p>LAST_INSERT_ID will return the last value assigned by Auto_increment and it is not required to specify the table name.</p>', '2018-09-23 13:14:38', '2018-09-23 13:14:38', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('PEAR(PHP Extension and Application Repository)', '<p>is a framework and repository for reusable PHP components. PEAR is a code repository containing all kinds of php code snippets and libraries.<br />
<br />
PEAR also offers a command-line interface that can be used to automatically install &quot;packages&quot;.</p>', '2018-09-27 10:43:56', '2018-09-27 10:43:56', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('namespace', '<p>Namespaces are a way to encapsulate items like classes, interfaces, etc.</p>', '2018-09-27 12:46:36', '2018-09-27 12:46:36', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('prevent method overriding', '<p>We can prevent method overriding by declaring the method of a class as a final method.</p>

<p>In the following example we have a final method so, it can&#39;t be overridden by the child class.</p>', '2018-09-27 12:48:25', '2018-09-27 12:48:25', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('serialize', '<p>Generates a storable representation of a value</p>

<p><em>Serializing</em>&nbsp;an object means converting it to a bytestream representation that can be stored in a file. This is useful for persistent data; for example, PHP sessions automatically save and restore objects. Serialization in PHP is mostly automatic&mdash;it requires little extra work from you, beyond calling the&nbsp;serialize( )&nbsp;and&nbsp;unserialize( )&nbsp;functions:</p>

<p style="text-align:start">PHP has two hooks for objects during the serialization and unserialization process:&nbsp;_ _sleep( )&nbsp;and&nbsp;_ _wakeup( ). These methods are used to notify objects that they&#39;re being serialized or unserialized. Objects can be serialized if they do not have these methods; however, they won&#39;t be notified about the process.</p>

<p>The&nbsp;_ _sleep( )&nbsp;method is called on an object just before serialization; it can perform any cleanup necessary to preserve the object&#39;s state, such as closing database connections, writing out unsaved persistent data, and so on. It should return an array containing the names of the data members that need be written into the bytestream. If you return an empty array, no data is written.</p>

<p>Conversely, the&nbsp;_ _wakeup( )&nbsp;method is called on an object immediately after an object is created from a bytestream. The method can take any action it requires, such as reopening database connections and other initialization tasks.</p>', '2018-09-27 18:58:09', '2018-09-27 18:58:09', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Annotations', '<p>Annotations basically let you inject behavior and can promote decoupling.</p>', '2018-09-28 12:37:30', '2018-09-28 12:37:30', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Interfejs to tak naprawdę mocno abstrakcyjna klasa', '<p>Interfejs to tak naprawdę mocno abstrakcyjna klasa. Może on mieścić tylko metody, kt&oacute;re z założenia r&oacute;wnież są abstrakcyjne.</p>

<p>Najważniejsze r&oacute;żnice to:</p>

<ul>
	<li>W interfejsach wszystkie metody są abstrakcyjne, natomiast w klasie abstrakcyjnej można stworzyć metody posiadające ciało, jak i abstrakcyjne.</li>
	<li>W PHP można dziedziczyć jedynie po jednej klasie, natomiast interfejs&oacute;w, można implementować wiele. Ponadto interfejsy mogą dziedziczyć wiele interfejs&oacute;w</li>
	<li>Klasa abstrakcyjna zazwyczaj jest mocno związana z klasami dziedziczącymi w sensie logicznym, czyli np. tworzymy klasę abstrakcyjną Planeta po kt&oacute;rej dziedziczą konkretne klasy planet (np Ziemia, Mars). Interfejs natomiast nie musi być już tak mocno związany z daną klasą, on określa jej cechy, np możesz stworzyć interfejs Zniszczalny, kt&oacute;ry m&oacute;wi że dany obiekt może zostać zniszczony. Taki interfejs możesz nadać zar&oacute;wno klasą Planeta, Gwiazda, Budynek itp.</li>
</ul>', '2018-09-29 22:20:43', '2018-09-29 22:20:43', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Test', '<p>https://github.com/wroclawdeveloper/benchmark.git</p>

<p>App installed on development server<br />
http://sasza.webmaster.etim.pl/benchmark/index.php</p>', '2018-10-01 23:43:39', '2018-10-01 23:43:39', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('CKEditor', '<p>good15= ckeditor_4.10.0_edd25d0b0274_se__table_resiser_statistics_ofnumcharacters__br_clear__justify__Imag_Uploader_and_Browser_for_CKEditor__Developer_tools<br />
__Advanced_tab_for_dialogs__Div_container_manager__Show_blocks + lang pl<br />
&nbsp;+ lang folder for imageuploader + pheadings plugin&nbsp;&nbsp; &nbsp;+ copy config.js + copy styles.js<br />
change permition to folder ckeditor(for imageuploader)</p>', '2018-10-02 13:35:41', '2018-10-02 13:35:41', 1, 6);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('difference between an interface and abstract class', '<p><strong>An interface is an empty shell</strong>. There are only the signatures of the methods, which implies that the methods do not have a body. The interface can&#39;t do anything. It&#39;s just a pattern.</p>

<p>Abstract classes look a lot like interfaces, but they have something more: You can define a behavior for them.</p>

<p>An interface is the purest form of abstraction with nothing concrete in place while an abstract class is a combination of some abstraction and concrete things.</p>

<p>&nbsp;</p>', '2018-10-02 19:48:19', '2018-10-02 19:48:19', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('difference between valid and well-formed XML', '<p>A well-formed XML is the one which has root element and all tags are closed properly, attributes are defined properly, their value is also quoted properly. On another hand, a valid XML is the one which can be validated against an XSD file or schema. So it&#39;s possible for an XML to be well-formed but not valid because they contain tags which may not be allowed by their schema.</p>

<p>&nbsp;</p>', '2018-10-02 19:55:44', '2018-10-02 19:55:44', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('SQL injection', '<p>SQL injection is a security vulnerability which allows an intruder to steal data from the system. Any system which takes input from the user and creates SQL query without validating or sanitizing that input is vulnerable to SQL injection. In such system, an intruder can inject SQL code instead of data to retrieve more than expected data. There are many instances on which sensitive information e.g. user id, password, and personal details are stolen by exploiting this vulnerability. In Java, you can avoid SQL injection by using Prepared statement.</p>

<p><br />
Read more: <a href="https://javarevisited.blogspot.com/2015/02/50-programmer-phone-interview-questions-answers.html#ixzz5SnWQH1du">https://javarevisited.blogspot.com/2015/02/50-programmer-phone-interview-questions-answers.html#ixzz5SnWQH1du</a></p>', '2018-10-02 19:57:50', '2018-10-02 19:57:50', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('difference between a class and an object', '<p>A class is a blueprint on which objects are created. A class has code and behavior but an object has both the state and behavior. You cannot create an object without creating a class to represent its structure. The class is also used to map an object in memory</p>

<p>&nbsp;</p>', '2018-10-02 19:59:13', '2018-10-02 19:59:13', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('regular expression', '<p>A regular expression is a way to perform pattern matching on text data. It&#39;s very powerful tool to find something e.g. some character in a long string e.g. finding if a book contains some word or not.</p>

<p><br />
Read more: <a href="https://javarevisited.blogspot.com/2015/02/50-programmer-phone-interview-questions-answers.html#ixzz5SnXY0qdC">https://javarevisited.blogspot.com/2015/02/50-programmer-phone-interview-questions-answers.html#ixzz5SnXY0qdC</a></p>', '2018-10-02 20:02:18', '2018-10-02 20:02:18', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('main error types in PHP', '<p>In PHP there are three main type of errors:</p>

<ul>
	<li>
	<p><strong>Notices</strong> &ndash; Simple, non-critical errors that are occurred during the script execution. An example of a Notice would be accessing an undefined variable.</p>
	</li>
	<li>
	<p><strong>Warnings</strong> &ndash; more important errors than Notices, however the scripts continue the execution. An example would be include() a file that does not exist.</p>
	</li>
	<li>
	<p><strong>Fatal</strong> &ndash; this type of error causes a termination of the script execution when it occurs. An example of a Fatal error would be accessing a property of a non-existent object or require() a non-existent file.</p>
	</li>
	<li>
	<p>Parse errors</p>
	</li>
</ul>', '2018-10-02 20:13:36', '2018-10-02 20:13:36', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('difference between GET and POST', '<ul>
	<li>GET displays the submitted data as part of the URL, during POST this information is not shown as it&rsquo;s encoded in the request.</li>
	<li>GET can handle a maximum of 2048 characters, POST has no such restrictions.</li>
	<li>GET allows only ASCII data, POST has no restrictions, binary data are also allowed.</li>
	<li>Normally GET is used to retrieve data while POST to insert and update.</li>
</ul>', '2018-10-02 20:14:53', '2018-10-02 20:14:53', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Traits', '<p>Traits are a mechanism that allows you to create reusable code in languages like PHP where multiple inheritance is not supported. A Trait cannot be instantiated on its own.</p>', '2018-10-02 20:16:44', '2018-10-02 20:16:44', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Final', '<p>you cannot extend a Final defined class. A Final class or method declaration prevents child class or method overriding.</p>', '2018-10-02 20:17:44', '2018-10-02 20:17:44', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('3 scope levels available in PHP', '<p><strong>Private</strong> &ndash; Visible only in its own class<br />
<strong>Public</strong> &ndash; Visible to any other code accessing the class<br />
<strong>Protected</strong> &ndash; Visible only to classes parent(s) and classes that extend the current class</p>', '2018-10-02 20:23:46', '2018-10-02 20:23:46', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('difference between classes and interfaces', '<p>an interface is a class without all the business logic. In an interface, all methods must be public and multiple inheritance is supported. However, all methods must be defined within the class that implements them. Abstract classes, on the other hand, can be declared with modifiers like public or internal, and can define properties or variables. Abstract classes do not support multiple inheritance and can only be extended by one abstract class.</p>', '2018-10-02 21:22:12', '2018-10-02 21:22:12', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('How does session work in PHP', '<p>the session id is sent to the user when his session is created. it is stored in a cookie (called, by default, PHPSESSID ) that cookie is sent by the browser to the server with each request. the server (PHP) uses that cookie, containing the session_id, to know which file corresponds to that user.</p>', '2018-10-03 15:07:07', '2018-10-03 15:07:07', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Closure', '<p>A closure is an object representation of an anonymous function. We can see that the anonymous function in the above code actually returns an object of closure which is assigned to and called using the variable $string. You can say closure is an object oriented way to use anonymous functions.</p>

<p>Anonymous functions, also known as closures, allow the creation of functions which have no specified name. They are most useful as the value of callback parameters, but they have many other uses. Anonymous functions are implemented using the Closure class.</p>', '2018-10-03 15:14:12', '2018-10-03 15:14:12', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('lambda function in PHP', '<p>To sum up, a lambda function is an anonymous PHP function that can be stored in a variable and passed as an argument to other functions or methods. A closure is a lambda function that is aware of its surrounding context.</p>', '2018-10-03 15:16:08', '2018-10-03 15:16:08', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Encapsulation', '<p>Wrapping some data in single unit is called Encapsulation. Second advantage of encapsulation is you can make the class read only or write only by providing setter or getter method.</p>', '2018-10-03 15:19:56', '2018-10-03 15:19:56', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('Polymorphism', '<p>Polymorphism describes a pattern in object oriented programming in which classes have different functionality while sharing a common interface.</p>', '2018-10-03 15:23:06', '2018-10-03 15:23:06', 1, 2);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('self & $this', '<p>In PHP self keyword is used to access static properties and methods.</p>

<p>$this refers to the class you are in. In PHP, the pseudo-variable $this is available when a method is called from within an object context.</p>

<p>Use $this to refer to the current object. Use self to refer to the current class.</p>', '2018-10-03 15:35:35', '2018-10-03 15:35:35', 1, 1);
INSERT INTO deepdict.knowledge_base (title, content, created_at, updated_at, user_id, category_id) VALUES ('urlencode', '<p>urlencode(string)&nbsp; This PHP function encodes a string to be used in a query part of a URL. urldecode(string) &mdash; This PHP function is decodes the query part of a URL string.</p>', '2018-10-03 15:45:08', '2018-10-03 15:45:08', 1, 2);