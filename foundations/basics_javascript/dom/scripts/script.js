// your JavaScript file
const container = document.querySelector('#container');

const content = document.createElement('div');
content.classList.add('content');
content.textContent = 'This is the glorious text-content!';

container.appendChild(content);

// adding red paragraph
const redParagraph = document.createElement('p');
redParagraph.textContent = "Hey I'm red!";
redParagraph.style.color = 'red';
container.appendChild(redParagraph);

// adding blue h3
const blueHeader = document.createElement('h3');
blueHeader.textContent = "I'm a blue h3";
blueHeader.style.color = 'blue';
container.appendChild(blueHeader);

// adding div blackborder and pink background color
const divBlackBorderPinkBackground = document.createElement('div');
const headerDiv = document.createElement('h1');
const paragraphDiv = document.createElement('p');
headerDiv.textContent = "I'm in a div";
paragraphDiv.textContent = "ME TOO!";
divBlackBorderPinkBackground.style.border = 'thick solid black';
divBlackBorderPinkBackground.style.backgroundColor = 'pink';
divBlackBorderPinkBackground.appendChild(headerDiv);
divBlackBorderPinkBackground.appendChild(paragraphDiv);
container.appendChild(divBlackBorderPinkBackground);