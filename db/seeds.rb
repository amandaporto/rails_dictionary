# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "gavin@example.com", password: "sekret")
User.create(email: "jason@example.com", password: "alsosekret")
User.create(email: "toni@example.com",  password: "supersekret")

Definition.create(word: "Kerfuffle",          part_of_speech: "noun",       meaning: "To make a fuss or a bother, usually when people have different points of view")
Definition.create(word: "Hullaballoo",        part_of_speech: "noun",       meaning: "Loud noises and shouting that people make when they’re angry")
Definition.create(word: "Ragamuffin",         part_of_speech: "noun",       meaning: "A person who wears dirty and scruffy clothes")
Definition.create(word: "Gobbledygook",       part_of_speech: "noun",       meaning: "Words that are nonsense or have no meaning")
Definition.create(word: "Discombobulate",     part_of_speech: "adjective",  meaning: "Confused")
Definition.create(word: "Curmudgeon",         part_of_speech: "noun",       meaning: "A bad-tempered or surly person")
Definition.create(word: "Lackadaisical",      part_of_speech: "adjective",  meaning: "Someone’s lazy and has no enthusiasm or determination")
Definition.create(word: "Woebegone",          part_of_speech: "adjective",  meaning: "Surrounded by sadness")
Definition.create(word: "Tmesis",             part_of_speech: "noun",       meaning: "He insertion of one or more words between the words that make up a compound phrase")
Definition.create(word: "Agastopia",          part_of_speech: "noun",       meaning: "Admiration of a particular part of someone's body")
Definition.create(word: "Kakorrhaphiophobia", part_of_speech: "noun",       meaning: "Abnormal fear of failure")
Definition.create(word: "Lamprophon",         part_of_speech: "noun",       meaning: "Loudness and clarity of voice")
Definition.create(word: "Macrosmatic",        part_of_speech: "adjective",  meaning: "Having a good sense of smell")
Definition.create(word: "Pauciloquen",        part_of_speech: "adjective",  meaning: "Uttering few words; brief in speech")
Definition.create(word: "Xertz",              part_of_speech: "verb",       meaning: "To gulp a beverage enthusiastically, heartily and quickly")
Definition.create(word: "Yarborough",         part_of_speech: "noun",       meaning: "A hand of cards containing no card above a nine")
Definition.create(word: "Zoanthropy",         part_of_speech: "noun",       meaning: "A mental disorder in which one believes oneself to be an animal")
