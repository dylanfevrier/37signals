# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

from_email = 'hello@dylanfevrier.com'
from_name = 'Dylan Fevrier'
to_email = 'team@37signals.com'
to_name = '37signals'

Message.create([
                 from_email: from_email,
                 from_name: from_name,
                 to_email: to_email,
                 to_name: to_name,
                 subject: 'Welcome to the team, Dylan!',
                 body: <<BODY
That’s the email I’d love to receive in the coming weeks.

I know your products. I’ve read your books (even your employee handbook). So of course, I can already picture myself there.

On your side, you don’t know me yet. I hope these few lines made you curious.

I know you’ll see candidates with more prestigious backgrounds than mine. I didn’t graduate from Stanford. I haven’t worked at a big tech company.

But I believe I have a few strengths that could make a real difference:
- I’m autonomous.
- I’m used to working remotely across time zones.
- I'm not afraid to talk to customers, understand their needs, and solve their problems.

I’m confident I can do the job, and do it well.
I’m confident I can fit into your culture.
And I’m confident I can help build products people love to use.

I hope I’ve made you want to continue this conversation.
Looking forward to meeting you!
BODY
               ])

Message.create([
                 from_email: from_email,
                 from_name: from_name,
                 to_email: to_email,
                 to_name: to_name,
                 subject: "I'm a manager of one",
                 body: <<BODY
I don't need to be micromanaged.
I work because I love it.
I set clear goals for myself and stay accountable to them.

I'm not aiming to become a manager.
That’s a different job, with different skills.
What drives me is building products that are simple, useful, and a pleasure to use.

That's where I want to keep growing: in the craft itself, close to the work, close to the users.
BODY
               ])


Message.create!([
                  from_email: from_email,
                  from_name: from_name,
                  to_email: to_email,
                  to_name: to_name,
                  subject: 'Do we have the same philosophy?',
                  body: <<BODY
I could list my experiences and tell you why I'm a great candidate. But you'd just read another box-ticking text.

I'd rather show you why I do this job. And what drives me.

You might agree, or not. But at least, you'll know if it matches what you're looking for.

I believe my role is to build products that are simple to understand, simple to use, and simple to maintain.

And the paradox is: simple is complex.

It means knowing when to say no.
No to an extra feature that would hurt the overall experience.
No to a shiny new technology that would slow down the team without improving productivity or user experience.

It also means staying focused on the real problem and knowing both the domain and the tech inside out.

That’s what makes this job exciting. It’s much more than sending instructions to a server through lines of code.
It’s a human job. It’s about understanding the needs, constraints, and realities of the people we build for.

That’s the philosophy I followed as a developer at Vendredi.
It’s also the philosophy that led me to launch Luka, a billing and accounting tool designed to simplify life for freelancers in Quebec.
BODY
                ])

Message.create([
                 from_email: from_email,
                 from_name: from_name,
                 to_email: to_email,
                 to_name: to_name,
                 subject: 'Start here!',
                 body: <<BODY
Hey!

Glad you're taking the time to read my application.

You probably noticed that the first email I’m inviting you to read is also the last one I actually sent.
I realized that many people start by reading the most recent email (me included). So it made sense to follow that order.

Anyway.

Let me introduce myself quickly: I'm Dylan, a web developer for over 5 years. I started coding when I was 15, following tutorials online.
My first programming language was C, then I moved on to web-related languages.
At the time, I had no idea I could turn it into a career.

It’s also when I read Rework for the first time.
Honestly, if you had told me back then that I would one day apply and maybe even work for the company behind that book, I wouldn’t have believed it.

Today, my goal is simple: catch your attention and make you want to see more.

To do that, I chose to present my application through the HEY interface.
You'll find a few emails there.
I hope they’ll make you want to meet me.

I know you're receiving a lot of applications.
So I'll keep it short.

Enjoy reading!
BODY
             ])
