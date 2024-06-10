#
# In a land shrouded in mystery...
#

# Python Class for Dark Castle
class DarkCastle:
    def __init__(self, name, construction_year, destruction_year, features):
        self.name = name
        self.construction_year = construction_year
        self.destruction_year = destruction_year
        self.features = features

    def get_duration(self):
        return self.destruction_year - self.construction_year

# Function to create a Dark Castle and return its duration
def create_castle(data):
    if not data or 'name' not in data:
        return {'error': 'name is required'}

    castle = DarkCastle(
        name=data['name'],
        construction_year=data['construction_year'],
        destruction_year=data['destruction_year'],
        features=data.get('features', [])
    )
    duration = castle.get_duration()
    message = f'The duration of {castle.name} was {duration} years.'
    return {'message': message, 'features': castle.features}

# Example data for creating a Dark Castle
example_data = {
    'name': 'Moonshadow Fortress',
    'construction_year': 980,
    'destruction_year': 1503,
    'features': ['Eerie Glow', 'High Battlements']
}

# Creating a Dark Castle and printing the result
result = create_castle(example_data)
print(result)

# ...there stood a Dark Castle
