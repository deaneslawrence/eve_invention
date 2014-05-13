# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140511043726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agtagents", id: false, force: true do |t|
    t.integer "agentid",                 null: false
    t.integer "divisionid"
    t.integer "corporationid"
    t.integer "locationid"
    t.integer "level"
    t.integer "quality",       limit: 2
    t.integer "agenttypeid"
    t.boolean "islocator"
  end

  create_table "agtagenttypes", id: false, force: true do |t|
    t.integer "agenttypeid",             null: false
    t.string  "agenttype",   limit: 100
  end

  create_table "agtresearchagents", id: false, force: true do |t|
    t.integer "agentid", null: false
    t.integer "typeid",  null: false
  end

  create_table "blueprint_users", force: true do |t|
    t.integer  "blueprint_id"
    t.integer  "user_id"
    t.integer  "preferred_decryptor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blueprint_users", ["blueprint_id", "user_id"], name: "index_blueprint_users_on_blueprint_id_and_user_id", unique: true, using: :btree

  create_table "blueprints", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certcerts", id: false, force: true do |t|
    t.integer "certid",                  null: false
    t.text    "description"
    t.integer "groupid"
    t.string  "name",        limit: 510
  end

  create_table "certmasteries", id: false, force: true do |t|
    t.integer "typeid"
    t.integer "masterylevel"
    t.integer "certid"
  end

  create_table "certskills", id: false, force: true do |t|
    t.integer "certid"
    t.integer "skillid"
    t.integer "certlevelint"
    t.integer "skilllevel"
    t.string  "certleveltext", limit: 16
  end

  create_table "chrancestries", id: false, force: true do |t|
    t.integer "ancestryid",                    null: false
    t.string  "ancestryname",     limit: 400
    t.integer "bloodlineid"
    t.string  "description",      limit: 4000
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconid"
    t.string  "shortdescription", limit: 2000
  end

  create_table "chrattributes", id: false, force: true do |t|
    t.integer "attributeid",                   null: false
    t.string  "attributename",    limit: 200
    t.string  "description",      limit: 2000
    t.integer "iconid"
    t.string  "shortdescription", limit: 2000
    t.string  "notes",            limit: 2000
  end

  create_table "chrbloodlines", id: false, force: true do |t|
    t.integer "bloodlineid",                         null: false
    t.string  "bloodlinename",          limit: 400
    t.integer "raceid"
    t.string  "description",            limit: 4000
    t.string  "maledescription",        limit: 4000
    t.string  "femaledescription",      limit: 4000
    t.integer "shiptypeid"
    t.integer "corporationid"
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconid"
    t.string  "shortdescription",       limit: 2000
    t.string  "shortmaledescription",   limit: 2000
    t.string  "shortfemaledescription", limit: 2000
  end

  create_table "chrfactions", id: false, force: true do |t|
    t.integer "factionid",                         null: false
    t.string  "factionname",          limit: 200
    t.string  "description",          limit: 2000
    t.integer "raceids"
    t.integer "solarsystemid"
    t.integer "corporationid"
    t.float   "sizefactor"
    t.integer "stationcount",         limit: 2
    t.integer "stationsystemcount",   limit: 2
    t.integer "militiacorporationid"
    t.integer "iconid"
  end

  create_table "chrraces", id: false, force: true do |t|
    t.integer "raceid",                        null: false
    t.string  "racename",         limit: 200
    t.string  "description",      limit: 2000
    t.integer "iconid"
    t.string  "shortdescription", limit: 1000
  end

  create_table "crpactivities", id: false, force: true do |t|
    t.integer "activityid",                null: false
    t.string  "activityname", limit: 400
    t.string  "description",  limit: 4000
  end

  create_table "crpnpccorporationdivisions", id: false, force: true do |t|
    t.integer "corporationid", null: false
    t.integer "divisionid",    null: false
    t.integer "size"
  end

  create_table "crpnpccorporationresearchfields", id: false, force: true do |t|
    t.integer "skillid",       null: false
    t.integer "corporationid", null: false
  end

  create_table "crpnpccorporations", id: false, force: true do |t|
    t.integer "corporationid",                    null: false
    t.string  "size",               limit: 1
    t.string  "extent",             limit: 1
    t.integer "solarsystemid"
    t.integer "investorid1"
    t.integer "investorshares1"
    t.integer "investorid2"
    t.integer "investorshares2"
    t.integer "investorid3"
    t.integer "investorshares3"
    t.integer "investorid4"
    t.integer "investorshares4"
    t.integer "friendid"
    t.integer "enemyid"
    t.integer "publicshares",       limit: 8
    t.integer "initialprice"
    t.float   "minsecurity"
    t.boolean "scattered"
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "factionid"
    t.float   "sizefactor"
    t.integer "stationcount",       limit: 2
    t.integer "stationsystemcount", limit: 2
    t.string  "description",        limit: 16000
    t.integer "iconid"
  end

  create_table "crpnpccorporationtrades", id: false, force: true do |t|
    t.integer "corporationid", null: false
    t.integer "typeid",        null: false
  end

  create_table "crpnpcdivisions", id: false, force: true do |t|
    t.integer "divisionid",                null: false
    t.string  "divisionname", limit: 400
    t.string  "description",  limit: 4000
    t.string  "leadertype",   limit: 400
  end

  create_table "crtcategories", id: false, force: true do |t|
    t.integer "categoryid",                null: false
    t.string  "description",  limit: 2000
    t.string  "categoryname", limit: 1024
  end

  create_table "crtcertificates", id: false, force: true do |t|
    t.integer "certificateid",              null: false
    t.integer "categoryid"
    t.integer "classid"
    t.integer "grade"
    t.integer "corpid"
    t.integer "iconid"
    t.string  "description",   limit: 2000
  end

  create_table "crtclasses", id: false, force: true do |t|
    t.integer "classid",                  null: false
    t.string  "description", limit: 2000
    t.string  "classname",   limit: 1024
  end

  create_table "crtrecommendations", id: false, force: true do |t|
    t.integer "recommendationid",                null: false
    t.integer "shiptypeid"
    t.integer "certificateid"
    t.integer "recommendationlevel", default: 0, null: false
  end

  create_table "crtrelationships", id: false, force: true do |t|
    t.integer "relationshipid", null: false
    t.integer "parentid"
    t.integer "parenttypeid"
    t.integer "parentlevel"
    t.integer "childid"
  end

  create_table "dgmattributecategories", id: false, force: true do |t|
    t.integer "categoryid",                      null: false
    t.string  "categoryname",        limit: 200
    t.string  "categorydescription", limit: 800
  end

  create_table "dgmattributetypes", id: false, force: true do |t|
    t.integer "attributeid",   limit: 2,    null: false
    t.string  "attributename", limit: 200
    t.string  "description",   limit: 2000
    t.integer "iconid"
    t.float   "defaultvalue"
    t.boolean "published"
    t.string  "displayname",   limit: 200
    t.integer "unitid"
    t.boolean "stackable"
    t.boolean "highisgood"
    t.integer "categoryid"
  end

  create_table "dgmeffects", id: false, force: true do |t|
    t.integer "effectid",                       limit: 2,    null: false
    t.string  "effectname",                     limit: 800
    t.integer "effectcategory",                 limit: 2
    t.integer "preexpression"
    t.integer "postexpression"
    t.string  "description",                    limit: 2000
    t.string  "guid",                           limit: 120
    t.integer "iconid"
    t.boolean "isoffensive"
    t.boolean "isassistance"
    t.integer "durationattributeid",            limit: 2
    t.integer "trackingspeedattributeid",       limit: 2
    t.integer "dischargeattributeid",           limit: 2
    t.integer "rangeattributeid",               limit: 2
    t.integer "falloffattributeid",             limit: 2
    t.boolean "disallowautorepeat"
    t.boolean "published"
    t.string  "displayname",                    limit: 200
    t.boolean "iswarpsafe"
    t.boolean "rangechance"
    t.boolean "electronicchance"
    t.boolean "propulsionchance"
    t.integer "distribution"
    t.string  "sfxname",                        limit: 40
    t.integer "npcusagechanceattributeid",      limit: 2
    t.integer "npcactivationchanceattributeid", limit: 2
    t.integer "fittingusagechanceattributeid",  limit: 2
  end

  create_table "dgmtypeattributes", id: false, force: true do |t|
    t.integer "typeid",                null: false
    t.integer "attributeid", limit: 2, null: false
    t.integer "valueint"
    t.float   "valuefloat"
  end

  create_table "dgmtypeeffects", id: false, force: true do |t|
    t.integer "typeid",              null: false
    t.integer "effectid",  limit: 2, null: false
    t.boolean "isdefault"
  end

  create_table "eveicons", id: false, force: true do |t|
    t.integer "iconid",                   null: false
    t.string  "iconfile",    limit: 1000, null: false
    t.text    "description",              null: false
  end

  create_table "eveunits", id: false, force: true do |t|
    t.integer "unitid",                   null: false
    t.string  "unitname",    limit: 200
    t.string  "displayname", limit: 100
    t.string  "description", limit: 2000
  end

  create_table "invblueprinttypes", id: false, force: true do |t|
    t.integer "blueprinttypeid",                    null: false
    t.integer "parentblueprinttypeid"
    t.integer "producttypeid"
    t.integer "productiontime"
    t.integer "techlevel",                limit: 2
    t.integer "researchproductivitytime"
    t.integer "researchmaterialtime"
    t.integer "researchcopytime"
    t.integer "researchtechtime"
    t.integer "productivitymodifier"
    t.integer "materialmodifier",         limit: 2
    t.integer "wastefactor",              limit: 2
    t.integer "maxproductionlimit"
  end

  create_table "invcategories", id: false, force: true do |t|
    t.integer "categoryid",                 null: false
    t.string  "categoryname", limit: 400
    t.string  "description",  limit: 12000
    t.integer "iconid"
    t.boolean "published"
  end

  create_table "invcontrabandtypes", id: false, force: true do |t|
    t.integer "factionid",        null: false
    t.integer "typeid",           null: false
    t.float   "standingloss"
    t.float   "confiscateminsec"
    t.float   "finebyvalue"
    t.float   "attackminsec"
  end

  create_table "invcontroltowerresourcepurposes", id: false, force: true do |t|
    t.integer "purpose",                 null: false
    t.string  "purposetext", limit: 200
  end

  create_table "invcontroltowerresources", id: false, force: true do |t|
    t.integer "controltowertypeid", null: false
    t.integer "resourcetypeid",     null: false
    t.integer "purpose"
    t.integer "quantity"
    t.float   "minsecuritylevel"
    t.integer "factionid"
  end

  create_table "inventions", force: true do |t|
    t.integer  "blueprint"
    t.integer  "prefered_decryptor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invflags", id: false, force: true do |t|
    t.integer "flagid",   limit: 2,   null: false
    t.string  "flagname", limit: 400
    t.string  "flagtext", limit: 200
    t.integer "orderid"
  end

  create_table "invgroups", id: false, force: true do |t|
    t.integer "groupid",                            null: false
    t.integer "categoryid"
    t.string  "groupname",            limit: 400
    t.string  "description",          limit: 12000
    t.integer "iconid"
    t.boolean "usebaseprice"
    t.boolean "allowmanufacture"
    t.boolean "allowrecycler"
    t.boolean "anchored"
    t.boolean "anchorable"
    t.boolean "fittablenonsingleton"
    t.boolean "published"
  end

  create_table "invitems", id: false, force: true do |t|
    t.integer "itemid",     limit: 8, null: false
    t.integer "typeid",               null: false
    t.integer "ownerid",              null: false
    t.integer "locationid", limit: 8, null: false
    t.integer "flagid",     limit: 2, null: false
    t.integer "quantity",             null: false
  end

  create_table "invmarketgroups", id: false, force: true do |t|
    t.integer "marketgroupid",                 null: false
    t.integer "parentgroupid"
    t.string  "marketgroupname", limit: 400
    t.string  "description",     limit: 12000
    t.integer "iconid"
    t.boolean "hastypes"
  end

  create_table "invmetagroups", id: false, force: true do |t|
    t.integer "metagroupid",   limit: 2,    null: false
    t.string  "metagroupname", limit: 400
    t.string  "description",   limit: 4000
    t.integer "iconid"
  end

  create_table "invmetatypes", id: false, force: true do |t|
    t.integer "typeid",                 null: false
    t.integer "parenttypeid"
    t.integer "metagroupid",  limit: 2
  end

  create_table "invnames", id: false, force: true do |t|
    t.integer "itemid",   limit: 8,   null: false
    t.string  "itemname", limit: 800, null: false
  end

  create_table "invpositions", id: false, force: true do |t|
    t.integer "itemid", limit: 8, null: false
    t.float   "x",                null: false
    t.float   "y",                null: false
    t.float   "z",                null: false
    t.decimal "yaw"
    t.decimal "pitch"
    t.decimal "roll"
  end

  create_table "invtypematerials", id: false, force: true do |t|
    t.integer "typeid",                     null: false
    t.integer "materialtypeid",             null: false
    t.integer "quantity",       default: 0, null: false
  end

  create_table "invtypereactions", id: false, force: true do |t|
    t.integer "reactiontypeid",           null: false
    t.boolean "input",                    null: false
    t.integer "typeid",                   null: false
    t.integer "quantity",       limit: 2
  end

  create_table "invtypes", id: false, force: true do |t|
    t.integer "typeid",                                                     null: false
    t.integer "groupid"
    t.string  "typename",            limit: 400
    t.string  "description",         limit: 12000
    t.float   "mass"
    t.float   "volume"
    t.float   "capacity"
    t.integer "portionsize"
    t.integer "raceid"
    t.decimal "baseprice",                         precision: 19, scale: 4
    t.boolean "published"
    t.integer "marketgroupid"
    t.float   "chanceofduplicating"
  end

  create_table "invuniquenames", id: false, force: true do |t|
    t.integer "itemid",               null: false
    t.string  "itemname", limit: 800, null: false
    t.integer "groupid"
  end

  add_index "invuniquenames", ["itemname"], name: "invUniqueNames_itemName_key", unique: true, using: :btree

  create_table "mapcelestialstatistics", id: false, force: true do |t|
    t.integer "celestialid",               null: false
    t.float   "temperature"
    t.string  "spectralclass",  limit: 20
    t.float   "luminosity"
    t.float   "age"
    t.float   "life"
    t.float   "orbitradius"
    t.float   "eccentricity"
    t.float   "massdust"
    t.float   "massgas"
    t.boolean "fragmented"
    t.float   "density"
    t.float   "surfacegravity"
    t.float   "escapevelocity"
    t.float   "orbitperiod"
    t.float   "rotationrate"
    t.boolean "locked"
    t.float   "pressure"
    t.float   "radius"
    t.float   "mass"
  end

  create_table "mapconstellationjumps", id: false, force: true do |t|
    t.integer "fromregionid"
    t.integer "fromconstellationid", null: false
    t.integer "toconstellationid",   null: false
    t.integer "toregionid"
  end

  create_table "mapconstellations", id: false, force: true do |t|
    t.integer "regionid"
    t.integer "constellationid",               null: false
    t.string  "constellationname", limit: 400
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "ymin"
    t.float   "ymax"
    t.float   "zmin"
    t.float   "zmax"
    t.integer "factionid"
    t.float   "radius"
  end

  create_table "mapdenormalize", id: false, force: true do |t|
    t.integer "itemid",                      null: false
    t.integer "typeid"
    t.integer "groupid"
    t.integer "solarsystemid"
    t.integer "constellationid"
    t.integer "regionid"
    t.integer "orbitid"
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "radius"
    t.string  "itemname",        limit: 400
    t.float   "security"
    t.integer "celestialindex"
    t.integer "orbitindex"
  end

  create_table "mapjumps", id: false, force: true do |t|
    t.integer "stargateid",  null: false
    t.integer "celestialid"
  end

  create_table "maplandmarks", id: false, force: true do |t|
    t.integer "landmarkid",   limit: 2,     null: false
    t.string  "landmarkname", limit: 200
    t.string  "description",  limit: 14000
    t.integer "locationid"
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "radius"
    t.integer "iconid"
    t.integer "importance"
  end

  create_table "maplocationscenes", id: false, force: true do |t|
    t.integer "locationid", null: false
    t.integer "graphicid"
  end

  create_table "maplocationwormholeclasses", id: false, force: true do |t|
    t.integer "locationid",      null: false
    t.integer "wormholeclassid"
  end

  create_table "mapregionjumps", id: false, force: true do |t|
    t.integer "fromregionid", null: false
    t.integer "toregionid",   null: false
  end

  create_table "mapregions", id: false, force: true do |t|
    t.integer "regionid",               null: false
    t.string  "regionname", limit: 400
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "ymin"
    t.float   "ymax"
    t.float   "zmin"
    t.float   "zmax"
    t.integer "factionid"
    t.float   "radius"
  end

  create_table "mapsolarsystemjumps", id: false, force: true do |t|
    t.integer "fromregionid"
    t.integer "fromconstellationid"
    t.integer "fromsolarsystemid",   null: false
    t.integer "tosolarsystemid",     null: false
    t.integer "toconstellationid"
    t.integer "toregionid"
  end

  create_table "mapsolarsystems", id: false, force: true do |t|
    t.integer "regionid"
    t.integer "constellationid"
    t.integer "solarsystemid",               null: false
    t.string  "solarsystemname", limit: 400
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "ymin"
    t.float   "ymax"
    t.float   "zmin"
    t.float   "zmax"
    t.float   "luminosity"
    t.boolean "border"
    t.boolean "fringe"
    t.boolean "corridor"
    t.boolean "hub"
    t.boolean "international"
    t.boolean "regional"
    t.boolean "constellation"
    t.float   "security"
    t.integer "factionid"
    t.float   "radius"
    t.integer "suntypeid"
    t.string  "securityclass",   limit: 4
  end

  create_table "mapuniverse", id: false, force: true do |t|
    t.integer "universeid",               null: false
    t.string  "universename", limit: 200
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "ymin"
    t.float   "ymax"
    t.float   "zmin"
    t.float   "zmax"
    t.float   "radius"
  end

  create_table "planetschematics", id: false, force: true do |t|
    t.integer "schematicid",   limit: 2,    null: false
    t.string  "schematicname", limit: 1020
    t.integer "cycletime"
  end

  create_table "planetschematicspinmap", id: false, force: true do |t|
    t.integer "schematicid", limit: 2, null: false
    t.integer "pintypeid",             null: false
  end

  create_table "planetschematicstypemap", id: false, force: true do |t|
    t.integer "schematicid", limit: 2, null: false
    t.integer "typeid",                null: false
    t.integer "quantity",    limit: 2
    t.boolean "isinput"
  end

  create_table "ramactivities", id: false, force: true do |t|
    t.integer "activityid",                null: false
    t.string  "activityname", limit: 400
    t.string  "iconno",       limit: 10
    t.string  "description",  limit: 4000
    t.boolean "published"
  end

  create_table "ramassemblylines", id: false, force: true do |t|
    t.integer  "assemblylineid",               null: false
    t.integer  "assemblylinetypeid"
    t.integer  "containerid"
    t.datetime "nextfreetime"
    t.integer  "uigroupingid"
    t.float    "costinstall"
    t.float    "costperhour"
    t.integer  "restrictionmask"
    t.float    "discountpergoodstandingpoint"
    t.float    "surchargeperbadstandingpoint"
    t.float    "minimumstanding"
    t.float    "minimumcharsecurity"
    t.float    "minimumcorpsecurity"
    t.float    "maximumcharsecurity"
    t.float    "maximumcorpsecurity"
    t.integer  "ownerid"
    t.integer  "activityid"
  end

  create_table "ramassemblylinestations", id: false, force: true do |t|
    t.integer "stationid",          null: false
    t.integer "assemblylinetypeid", null: false
    t.integer "quantity"
    t.integer "stationtypeid"
    t.integer "ownerid"
    t.integer "solarsystemid"
    t.integer "regionid"
  end

  create_table "ramassemblylinetypedetailpercategory", id: false, force: true do |t|
    t.integer "assemblylinetypeid", null: false
    t.integer "categoryid",         null: false
    t.float   "timemultiplier"
    t.float   "materialmultiplier"
  end

  create_table "ramassemblylinetypedetailpergroup", id: false, force: true do |t|
    t.integer "assemblylinetypeid", null: false
    t.integer "groupid",            null: false
    t.float   "timemultiplier"
    t.float   "materialmultiplier"
  end

  create_table "ramassemblylinetypes", id: false, force: true do |t|
    t.integer "assemblylinetypeid",                  null: false
    t.string  "assemblylinetypename",   limit: 400
    t.string  "description",            limit: 4000
    t.float   "basetimemultiplier"
    t.float   "basematerialmultiplier"
    t.float   "volume"
    t.integer "activityid"
    t.float   "mincostperhour"
  end

  create_table "raminstallationtypecontents", id: false, force: true do |t|
    t.integer "installationtypeid", null: false
    t.integer "assemblylinetypeid", null: false
    t.integer "quantity"
  end

  create_table "ramtyperequirements", id: false, force: true do |t|
    t.integer "typeid",         null: false
    t.integer "activityid",     null: false
    t.integer "requiredtypeid", null: false
    t.integer "quantity"
    t.float   "damageperjob"
    t.boolean "recycle"
  end

  create_table "staoperations", id: false, force: true do |t|
    t.integer "activityid"
    t.integer "operationid",                        null: false
    t.string  "operationname",         limit: 400
    t.string  "description",           limit: 4000
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "ratio"
    t.integer "caldaristationtypeid"
    t.integer "minmatarstationtypeid"
    t.integer "amarrstationtypeid"
    t.integer "gallentestationtypeid"
    t.integer "jovestationtypeid"
  end

  create_table "staoperationservices", id: false, force: true do |t|
    t.integer "operationid", null: false
    t.integer "serviceid",   null: false
  end

  create_table "staservices", id: false, force: true do |t|
    t.integer "serviceid",                null: false
    t.string  "servicename", limit: 400
    t.string  "description", limit: 4000
  end

  create_table "stastations", id: false, force: true do |t|
    t.integer "stationid",                            null: false
    t.integer "security",                 limit: 2
    t.float   "dockingcostpervolume"
    t.float   "maxshipvolumedockable"
    t.integer "officerentalcost"
    t.integer "operationid"
    t.integer "stationtypeid"
    t.integer "corporationid"
    t.integer "solarsystemid"
    t.integer "constellationid"
    t.integer "regionid"
    t.string  "stationname",              limit: 400
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "reprocessingefficiency"
    t.float   "reprocessingstationstake"
    t.integer "reprocessinghangarflag"
  end

  create_table "stastationtypes", id: false, force: true do |t|
    t.integer "stationtypeid",          null: false
    t.float   "dockentryx"
    t.float   "dockentryy"
    t.float   "dockentryz"
    t.float   "dockorientationx"
    t.float   "dockorientationy"
    t.float   "dockorientationz"
    t.integer "operationid"
    t.integer "officeslots"
    t.float   "reprocessingefficiency"
    t.boolean "conquerable"
  end

  create_table "translationtables", id: false, force: true do |t|
    t.string  "sourcetable",      limit: 800, null: false
    t.string  "destinationtable", limit: 800
    t.string  "translatedkey",    limit: 800, null: false
    t.integer "tcgroupid"
    t.integer "tcid"
  end

  create_table "trntranslationcolumns", id: false, force: true do |t|
    t.integer "tcgroupid",  limit: 2
    t.integer "tcid",       limit: 2,    null: false
    t.string  "tablename",  limit: 1024, null: false
    t.string  "columnname", limit: 512,  null: false
    t.string  "masterid",   limit: 512
  end

  create_table "trntranslationlanguages", id: false, force: true do |t|
    t.integer "numericlanguageid",             null: false
    t.string  "languageid",        limit: 100
    t.string  "languagename",      limit: 800
  end

  create_table "trntranslations", id: false, force: true do |t|
    t.integer "tcid",       limit: 2,   null: false
    t.integer "keyid",                  null: false
    t.string  "languageid", limit: 100, null: false
    t.text    "text",                   null: false
  end

  create_table "users", force: true do |t|
    t.string   "eve_key"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "warcombatzones", id: false, force: true do |t|
    t.integer "combatzoneid",                default: -1, null: false
    t.string  "combatzonename", limit: 400
    t.integer "factionid"
    t.integer "centersystemid"
    t.string  "description",    limit: 2000
  end

  create_table "warcombatzonesystems", id: false, force: true do |t|
    t.integer "solarsystemid", null: false
    t.integer "combatzoneid"
  end

end
