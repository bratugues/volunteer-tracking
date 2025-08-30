puts "Cleaning DB..."

Event.destroy_all

puts "Creating events..."
Event.create!([
  {
    name: "The Great Duck Race",
    description: "Thousands of rubber ducks are released into a river, and the first one to cross the finish line wins. It's a slow race, but the excitement is palpable as each duck bobbing along has its own cheering section.",
    image_url: "https://th.bing.com/th/id/OIP.0QV9wnwK6vRAIyzDRhgiVAHaEK?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"
  },
  {
    name: "World's Largest Disco",
    description: "A 1970s-themed party where thousands of people don their best disco outfits and dance to the groovy tunes. It's like stepping into a time machine, but with more glitter.",
    image_url: "https://th.bing.com/th/id/R.560abd0f7c9563b91316d2dbccad9e82?rik=xBEL9l4YcNnAuw&riu=http%3a%2f%2fwww.dailypublic.com%2fsites%2fdefault%2ffiles%2f2018%2fNov%2funnamed.jpg&ehk=LC7ZujXOZXd0EZJNkZ8g%2bld9ovFLtvrawmYBfhR5eVU%3d&risl=&pid=ImgRaw&r=0"
  },
  {
    name: "The Cheese Rolling Race",
    description: "Competitors chase a 9-pound wheel of cheese down a steep hill at dangerously high speeds. It's as chaotic and entertaining as it sounds.",
    image_url: "https://th.bing.com/th/id/OIP.WQp-8pyGCKvGlIif1f0-TQHaE8?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"
  },
  {
    name: "La Tomatina Festival",
    description: "A massive food fight in Spain where thousands of people throw overripe tomatoes at each other in the streets. It's messy, fun, and very squishy.",
    image_url: "https://th.bing.com/th?id=OIF.nv2hQbPZ%2fzfT%2f9aXE%2bZY%2bA&o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"
  }
])

puts "#{Event.count} events created"
puts "Done zo/"
