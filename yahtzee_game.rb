#!/usr/bin/env ruby

require_relative "dice"
require_relative "yahtzee"
require_relative "yahtzee_helper"
include YahtzeeHelper

dice = initial_roll
reroll_dice(dice)
