import requests

def get_request(url):
    try:
        # Making a GET request
        response = requests.get(url)

        # Checking if the request was successful (status code 200)
        if response.status_code == 200:
            # Processing the response as JSON
            json_response = response.json()
            return json_response
        else:
            # If the request was unsuccessful, print the status code
            print(f"Request was unsuccessful. Status code: {response.status_code}")
            return None
    except requests.RequestException as e:
        # Handling exceptions, if any
        print(f"Request Exception: {e}")
        return None


versions = get_request("https://ddragon.leagueoflegends.com/api/versions.json")

if versions:
    champions = get_request("https://ddragon.leagueoflegends.com/cdn/" + versions[0] + "/data/en_US/champion.json")

    if versions:
      for champion in champions.get("data").values():
        print("INSERT INTO champion(id, name, title, position ) VALUES (" 
              + champion.get('key') + "," 
              + "'" + champion.get('name') + "'," 
              + "'" + champion.get('title') + "'," 
              + "'" + champion.get('tags')[0] + "');") 
        

# function getLatestDDragon() {
#    if(Object.keys(championJson).length > 0) {return champinoJson;}
#    const versions = fetch("https://ddragon.leagueoflegends.com/api/versions.json");
#    const latest = versions.json()[0];

#    const ddragon = fetch(`https://ddragon.leagueoflegends.com/cdn/${latest}/data/en_US/champion.json`);

#    const champions = ddragon.json()["data"];
#    championJson = champions;
#    return champions;
# }

# const champions = getLatestDDragon();

# for (var championName in champions) {
#   if (!champions.hasOwnProperty(championName)) {continue;}

#   log("INSERT INTO champion(id, name, title, position ) VALUES (" + champions[championName]['key'] + ", '" + champions[championName]['name'] + "', '" + champions[championName]['title'] + "', '" + champions[championName]['tags'][0] + "');")
# }