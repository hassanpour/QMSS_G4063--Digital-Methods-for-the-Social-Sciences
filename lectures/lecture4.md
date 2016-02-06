##Lecture 4

### Interactive data processing & visualization with D3 (Data-Driven Documents)

Once you have access to the to Scott Murray's D3 tutorial book, first of all, I want you to fork [the repo at this GitHub link] (https://github.com/alignedleft/d3-book). Now you are ready to scheme the .pdf--provided to you on Coursewroks. If you do not have a GitHub account, you can simply download a .zip file containing all the sample codes from the repository's page 

#### Intro to D3

D3 (a Java based script for creating Data Driven Documents) is a powerful tool for writing code to produce visualizations directly from data. It incorporates SVGs (Scalable Vector Graphics) and CSS (Cascading Style Sheets) in an .html context for conductign _transition_s (animations) and interactions on the web. The code is in Java Script, and there are plenty of excellent ready platforms you can use to start running your own D3 visualizations. 

For the start, download [_project-folder_](https://www.dropbox.com/sh/39zdj9k1s1b7pgg/AAArnmc9Lhjf3wBoIW0YrQGqa?dl=0). It includes a version of D3, and index.html, which is the file we will run to see visualizatins. After skimming Chapter 3 from Sott Murray's _Interactive Data Visualization for the Web_, run a local server at "project folder", where you can load `index.html` (See Chapter 4 of SM book). 

``
cd ~/.../project-folder

python -m SimpleHTTPServer 8888 &
``

Now go to <http://localhost:8888/> to see the output from index.html. I recommend using Chrome. Once you open the page, go to View, Developer, JavaScript Console and you familiarize yourself with the environment Chapters 3 and 5 in SM are going to be helpful.

Writing a D3 visualization is bascially producing an .html file that runs a JS code in the body--it does not use any ready image files (such as .jpg etc) and communicates with data files such as JSON and CSV directly. We will use some JSON and CSV files later to see how that works. First, let's try and run a simple code:

```javascript
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>D3 Page Template</title>
<script type="text/javascript" src="../d3/d3.js"></script>
</head>
<body>
<script type="text/javascript">

// a short and expressive piece of text output here

d3.select("body").append("p").text("My First D3 Visualization!");

</script>
</body>
</html>
```

Note the easy (and customary) ways for reading CSV and JSON files into JS body of D3 code:

```javascript
d3.csv("My_CSV_File.csv", function(data) {
console.log(data); //Log output to console
});
```

Or the tweet JSON file we will use to visualize our tweets from the Primaries:

```javascript
d3.json("Primaries_Tweets.json", function(json) {
console.log(json); //Log output to console
});
```

Read more about simple data input in SM Chapter 4.

Now let's produce the first bar chart using D3. Files for SM tutorial book are available on the Book's GitHub. [At this link](https://github.com/hassanpour/d3-book/blob/master/chapter_06/05_power_of_data_more_points.html) you can find one sample file. See how the code starts with defining a CSS style at the header:

```css
<style type="text/css">
		
			div.bar {
				display: inline-block;
				width: 20px;
				height: 75px;	/* Gets overriden by D3-assigned height below */
				margin-right: 2px;
				background-color: teal;
			}
		
		</style>
```
and then 





----

Take a look at the required reading: [the D3 tutorial at this link](http://alignedleft.com/tutorials).

Familiarize yourself with examples here: 

1. [General intro plus good examples](http://d3js.org/)
2. [Tutorials](https://github.com/mbostock/d3/wiki/Tutorials)
3. [Examples and Code](https://github.com/mbostock/d3/wiki/Gallery)

We will discuss more in class.


