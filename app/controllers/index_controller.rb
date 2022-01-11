class IndexController < ApplicationController
    # This controller is responsible for obtain financial data from 'Fintoc'
    def index
        require 'fintoc'

        client = Fintoc::Client.new('sk_live_eBks7xpMx1dEwwszPs9mD9dff-bgHmRA')
        link = client.get_link('link_mq0zGrdij3zLEJ3R_token_sj4Bxxykjt66mESxc2R1btB4')
        puts link.accounts

        # Or... you can pretty print all the accounts in a Link

        #link = client.get_link('link_token')
        #link.show_accounts

    end 
end
