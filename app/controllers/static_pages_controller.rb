class StaticPagesController < ApplicationController
  def index
  end

  def reports
    @risks = [
      {id: 1, name: 'DDOS', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum repudiandae perferendis laudantium incidunt ullam provident magni quod error ab id, veniam blanditiis eos nulla libero nobis dolorem minus illum asperiores.'},
      {id: 2, name: 'Phishing', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur blanditiis harum tempora numquam, velit deleniti odit repellat, distinctio veniam quam unde, vitae error reiciendis aperiam culpa. Consectetur modi aspernatur placeat!'},
      {id: 3, name: 'Botnets', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero nulla doloremque enim laboriosam atque, aperiam quidem recusandae voluptates architecto perferendis laborum illo inventore non soluta eum ducimus quas, optio placeat.'},
      {id: 4, name: 'Hacking', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea cumque incidunt, corrupti beatae earum illum libero repellat! Nisi nesciunt accusamus veniam ea quos dolore totam, earum, delectus sequi, fugit laborum!'},
      {id: 5, name: 'Ransomeware', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga assumenda rerum dicta vitae eos eius quaerat, ad, placeat veniam atque voluptas accusantium dolorum doloribus. Quaerat quo est tenetur! Possimus, delectus.'},
      {id: 6, name: 'Malware', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum labore amet quas non aut dolor voluptatem fugit dolorem hic. A veniam odit officiis, animi quis amet rerum facere voluptatem quos!'},
      {id: 7, name: 'Spoofing', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam impedit excepturi dolorum deserunt laborum veritatis non facere eos a molestiae, ex perspiciatis illo minus nam id illum doloremque quo dolores!'},
      {id: 8, name: 'Spam', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius repellat pariatur ut, atque? Dolorum, quam necessitatibus eius id eum veritatis modi minus in incidunt expedita blanditiis mollitia, nihil odit ut.'},
    ]
  end

  def analytics
  end
end
