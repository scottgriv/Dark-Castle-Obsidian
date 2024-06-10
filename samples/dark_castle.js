/*
 * In a land shrouded in mystery...
 */

class DarkCastle {
  constructor(props) {
    this.name = props.name;
    this.constructionYear = props.constructionYear;
    this.destructionYear = props.destructionYear;
    this.features = props.features;
  }

  get duration() {
    return this.calcDuration();
  }

  calcDuration() {
    return this.destructionYear - this.constructionYear;
  }
}

// ...there stood a Dark Castle
const StarfallKeep = new DarkCastle({
  name: "Starfall Keep",
  constructionYear: 1100,
  destructionYear: 1678,
  features: ["Mystical Lights", "Ancient Walls"],
});

console.log(`The duration of ${StarfallKeep.name} was ${StarfallKeep.duration} years.`);

// Additional code

const unusedVariable = 'I am never used';

// This will throw an error because 'doesNotExist' is not defined
try {
  doesNotExist.nope(`I'm never imported`);
} catch (error) {
  console.error('Error:', error.message);
}

class Widget extends React.Component {
  handleAction() {
    this.something = 'hello';
    return false;
  }

  render() {
    return (
      <div>
        <p>Widget Component</p>
      </div>
    );
  }
}

// Function declaration
const exampleFunction = function() {
  console.log('Example function');
};

// Arrow function
const arrowFunction = () => {
  console.log('Arrow function');
};

console.log(exampleFunction, arrowFunction);

// More castles

// ...there was a castle named Moonshadow Fortress
const MoonshadowFortress = new DarkCastle({
  name: "Moonshadow Fortress",
  constructionYear: 980,
  destructionYear: 1503,
  features: ["Eerie Glow", "High Battlements"],
});

console.log(`The duration of ${MoonshadowFortress.name} was ${MoonshadowFortress.duration} years.`);

// ...there was a castle named Whispering Grove Keep
const WhisperingGroveKeep = new DarkCastle({
  name: "Whispering Grove Keep",
  constructionYear: 1050,
  destructionYear: 1630,
  features: ["Whispering Trees", "Hidden Passages"],
});

console.log(`The duration of ${WhisperingGroveKeep.name} was ${WhisperingGroveKeep.duration} years.`);

// Example of mixing traditional and modern JavaScript

// Traditional function
function traditionalFunction() {
  console.log('This is a traditional function.');
}

// Modern arrow function
const modernFunction = () => {
  console.log('This is a modern arrow function.');
};

traditionalFunction();
modernFunction();
