# Rspec

```ruby
# spec/models/monster.rb

describe Monster do
  let(:attributes) do
    {
      name: "Dustwing",
      size: "tiny",
      taxonomy: "Abradacus nonexistus"
    }
  end
 
  it "is considered valid" do
    expect(Monster.new(attributes)).to be_valid
  end
  
  let(:missing_name) { attributes.except(:name) }
  let(:invalid_size) { attributes.merge(size: "not that big") }
  let(:missing_species) { attributes.merge(taxonomy: "Abradacus") }
 
  it "is invalid without a name" do
    expect(Monster.new(missing_name)).not_to be_valid
  end
 
  it "is invalid with an unusual size" do
    expect(Monster.new(invalid_size)).not_to be_valid
  end
 
  it "is invalid with a missing species" do
    expect(Monster.new(missing_species)).not_to be_valid
  end
end
```
```ruby
# spec/controllers/monsters_controller_spec.rb
 
describe MonstersController, type: :controller do
  let(:attributes) do
    {
      name: "Dustwing",
      size: "tiny",
      taxonomy: "Abradacus nonexistus"
    }
  end
 
  it "renders the show template" do
    monster = Monster.create!(attributes)
    get :show, id: monster.id
    expect(response).to render_template(:show)
  end
 
  describe "creation" do
    before { post :create, monster: attributes }
    let(:monster) { Monster.find_by(name: "Dustwing") }
 
    it "creates a new monster" do
      expect(monster).to_not be_nil
    end
 
    it "redirects to the monster's show page" do
      expect(response).to redirect_to(monster_path(monster))
    end
  end
end
```