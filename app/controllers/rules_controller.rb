class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end
  def new
    @rules = Rule.all
  end
end
