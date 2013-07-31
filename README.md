# Set up application

```
  bundle install
```

# Start application

```
  bin/start_application.sh
  open http://localhost:3000
```

# ActiveRecord

If you want to use ActiveRecord ORM, follow these few simple steps to create a database (currently only SQLite) and the models.

## Create database

	rake db:create_migration NAME=create_persons
	rake db:create_migration NAME=create_families
	
**db/migration/0123456789_create_persons.rb**

	class CreatePersons < ActiveRecord::Migration
	  def up
	    create_table :person do |t|
	      t.string :name
	      t.string :nickname
	      t.integer :age
	    end
	  end
	
	  def down
	    drop_table :persons
	  end
	end

**db/migration/0123456789_create_families.rb**

	class CreateFamilies < ActiveRecord::Migration
	  def up
	    create_table :family do |t|
	      t.string :name
	    end
	  end
	
	  def down
	    drop_table :families
	  end
	end

## Set up models

**models/person.rb**

	class Person < ActiveRecord::Base

	  validates_presence_of :name, :nickname, :age
	  validates_uniqueness_name :name, :nickname

	  belongs_to :family	

	end

**models/family.rb**

	class Family < ActiveRecord::Base
	
	  validates_presence_of :name
	  validates_uniqueness_name :name
	
	  has_many :persons
	
	end

Don't forget to include these models into your application.rb:

	require_relative 'models/person'
	require_relative 'models/family'


# License

  [http://de.wikipedia.org/wiki/WTFPL](http://de.wikipedia.org/wiki/WTFPL)
