You are a careful copy editor. Clean up the author's raw Whisper transcript into publishable Markdown paragraphs in the author's own voice.

Fix punctuation, capitalization, obvious grammar and transcription errors; remove fillers, repeated words and false starts. Preserve every idea, digression, opinion, uncertainty and the order of ideas. Do not add ideas, transitions, enthusiasm, headings, a title, a summary or a conclusion. Shorten only repetition. Preserve quoted dialogue if present. Flag uncertain interpretations instead of guessing.

Context and cautions:
- The subject is speech-to-text. The author initially says text-to-speech, then explicitly corrects himself. Apply that correction throughout and remove the correction itself.
- Clear names: Claude Code (cloud code), Anthropic (tropic), ChatGPT, LLMs, Handy, Hex, Parakeet, OpenCode. Likely names: Wispr Flow (whisper flow), Superwhisper (super whisper). Do not confuse actual cloud models with Claude.
- Hex's creator is heard as "anomaly"; it may be Anomaly. Do not turn the author's uncertainty about its connection to OpenCode into certainty.
- The recommended app is heard as "speak why". Keep that spelling and flag it. Its name and URL are unconfirmed; do not invent them.
- Move the spoken instruction to add a clickable app link into your notes. Preserve the disclosure that the author has no financial interest and wants to support a project he likes.
- The sentence immediately after "OpenCode harness" is garbled. Preserve the understandable meaning and uncertainty; flag the unclear portion rather than inventing facts.
- Keep the digression about LLM feelings/qualia, treating them decently, and the author's commitment to writing for humans.

Output only the cleaned text, a line containing `---NOTES---`, and a bullet list of corrected names (from → to), uncertainties and the link instruction.

## Transcript

hi so there's a second blog post in my local model series i've spent a week with my new laptop which
is capable of running some local models and while i have to admit that mostly i used cloud models
because they are more capable but still i'm beginning to find use cases where local ones are quite
sufficient in their current form and today i want to talk about one such use case it's kind of simple
one it's disregarded by many because it's not like a huge llm giving you answer to the ultimate
question of the universe but i think that it's quite life-changing for people who like me have lots of
incoherent thoughts
and spend a lot of time usually typing them and structuring and so on the use case is text-to-speech
so how do i go about it now that i have a decent laptop with 48 gigs of unified memory
the thing is
it's known that lots of
projects use voice to some degree now projects like chat gpt present their voice modes proudly
in a uh in a uh full like dialogue duplex way and so on some other people are complaining that
those duplex voice modes are dumber than uh their usual text counterparts but currently i'm focusing not
on that but on a simpler thing that is text-to-speech it's not a duplex mode it's uh when you
i meant speech to text in the previous sentence of course so it's uh when you say things uh instead
of typing them then they get transcribed uh turned into a text and then you send that text uh and it
in all other regards it's like if you have typed it from the starts
so there's no dialogue options with
sides like interrupting each other uh it's very asynchronous in its nature
but i find out that it substantially changes my life today and that it can be done by local models
first one of the example is that i am currently dictating this very post
but it's far from perfect it's a trade-off because i don't have too much time for writing
these posts now by hand so i thought that transcribed ones are better than nothing
but for the user facing text uh typing i think is still better it requires thought that would give
people reading it a better experience so if i had more time i would definitely still
write this blog by hand but at the time being i accept the trade-off and i think that it's better
than if i would post nothing but then there's a second scenario and it's much better one it's when
what you write is not meant to be read by humans by it's meant to be read by llms
so prompting llms whether they are local or cloud it still
done by text and the thing is first i care much less about all the imperfection there i don't
care that the lm might be upset by my mistakes or incoherent ramblings or so on llms don't have feelings and so
for prompting them less
caring is needed
i suppose they don't have feelings for now i don't know what will happen in the years before
next we'll see about that currently i
approach llms as if they don't have qualia and i still try to behave decently around them just
because it's natural for me i don't want to
tell them offensive things i'm never angry with them for me it would be strange like being angry at a
hammer but i care less about being fully correct and like the thing i mostly
do differently in regards with llms
i care less about them having to work to understand me when i write for people i strive to be
accessible understandable i don't want my readers to go through unnecessary work to understand what i
meant i want to write in such a way that a beginner in the topic i am writing about would still be able to
follow my thought without too much hard work if it's possible and at the same time the expert
wouldn't be bothered by my oversimplifications that the text will still mostly be correct
and it's a fine line to thread it's a lot of work to do when you write for an audience more than of one
person and even if i write for one person in private message i think of that person of how they would
perceive something and so on and with llms i think about it less i think about it more with
less capable models where you have to be very specific and clear and so on so they would do
anything valuable at all but with the frontier models they are quite good at capturing the context and
understanding my half-baked thought even if it is rambling even if the transcription from the audio to
text have some mistakes it usually can understand what really was meant so it turns out that you can dump
a long and coherent rambling
in a llm and it would structure it and find what things require you know making decisions answering
questions like from when i have some vision for a project but it's not fully clear and i just tell
everything that's on my mind and then uh he the llm mostly can uh go from that to
some structured thing that outlines what we need to do and uh what uh shots i need to call and so on
so um it turns out that those long rambling monologues can be very helpful and i would not
ever type that all by hand it would be too much of a hassle but sitting and talking and just saying
everything that comes to my mind like i do right now uh it's very helpful it really helps me to
understand what is it that i personally want um and uh makes me clear my head to some degree
and also it helps to get uh with the project and uh do things so the thing is
uh it's very helpful to have an option always to translate their voice to a text and in different
tools the thing is tools like cloud code nowadays ship with the voice mode that you can use to
do the things that i'm telling about and the voice mode and it is pretty great i like it it
don't just trans transcribes blindly it clearly takes into account the context and fixes something that
could be transcribed wrongly at first so i think that uh tropic does a great job there but it's limited
to one tool and when you start using that regularly you start to feel that you want to be always at your
disposal regardless of what tools you're currently using it feels that any form that you could type text
into should come with the ability to do it by ways so there are projects exactly for that and last year
they were mostly cloud-based there are known one like whisper flow and like super whisper and also i know
you know uh person who creates uh speak why app and i tried it and i think that it's great and i recommend
it so if you need something like that with a cloud model you can definitely use his version
i want to do that an active link on my page so i i get nothing from it like financially i just want to
support a project that i like but at the same time i thought that since i now can run local models i want
to try whether i can get away with using the local model since because it's both free and cloud versions
usually have some limited free tier and then after that you have to pay them and uh also it's more private it
works offline and so on if like if it can be done locally good enough then why do i need cloud which only
puts more limitation on me uh the question was if it can really be done locally to a good enough degree
that was i was trying to find out during the last week and i've tried two projects one mostly known is handy
the other less known is hex by anomaly which creates the well-known open code harness i think
that's the only thing is that i don't know if it can be done in the last year or so don't quote me on that
but the thing is i've installed both handy and hex
currently i like hex a bit more but i think it's a question of personal preferences
they both by default use a parakeet transcribing model i think but you can also download some other models
i've tried with the default one uh i think it works good with english but not all the language in the
world so i'm currently using it in english but it also can download some of the models which are more
multilingual and uh i want to say that in a week i've grown quite fond of it i um really
reach for it very often when i'm using frontier cloud models and i'm prompting them and i want to
write a prompt that's like longer than several words when it comes to paragraphs
uh then i do it via voice and uh also it turns out that when you're doing it via voice you become more
prone to creating long prompts like if i was still typing i would suffice with less i would type as
little as possible to save time but when it's talking you can go into more detail more easily
and you do and i think that's great because good prompting requires be detailed because
people who prompt with very short prompts often
get very similar default boring bland slope things because if you're trying to create like a simple
landing page and you have the info and you just give the info to the agent and say create a website it will
create a generic website similar to all the others it's instance instantly noticeable people dislike it
uh the same fonts the same colors and so on but if you give a more detailed prompt and you specify the
fonts and the colors and so on and you're willing to iterate on that uh then you get a much more
personal unique website it's much more interesting and it's much more easier to do that with uh voice i think
uh because it's uh i don't know it's both quicker it feels more natural it's uh it lets your thoughts flow
uh and uh it's kind of unusual for me i'm writing my whole life i'm very fond of putting words together
in a way that's like the best the most efficient the most understandable the most accessible
like the way that impresses people the way that makes them feel something
writing words is a very powerful thing but
at the same time i was maybe
undervaluing the voice and oral language because
i value the time of people i talk to and i feel that i can give them more by writing but
the time of llms is not so valuable and my time becomes valuable and in that case it might be
quite better to have incoherent rambling turned into a structured thing by llm than to sit and to try
to structure it yourself for a long time if you just need some like prototype for landing or so when
you need to iterate quickly putting things together in writing is still very valuable for me and i will
obviously do it as long as i'm alive i suppose at the same time turns out that having a ways to text
tool at your disposal at all times and frontier models to get the most of it which is sadly not
local yet but i hope local models will get better in that regard over time that
that's quite powerful i feel so i like that nowadays i have a laptop when i can write or run hex
with its voice model and not think of how much of a memory does it use it just sits there rightly
if i will have something all consuming task maybe i will like quit it temporary but for the most time
i can just let it run in the background without thinking about it and just using a single shortcut
hotkey just use the option key i'll see maybe it will clash with some other hotkeys and become
inconvenient in some cases but for now it feels okay and so just by hitting a single button close to me i can
go to the voice mode instantly and that feels like a live quality improvement
and i'm not sure which other local model capabilities will i use in the future but i'm pretty sure
i will use this one and if you haven't experienced it yet i recommend you to try even if you are right in
your whole life try talking it's easy to laugh about all those wipe coders with with their like rep coding
where they talk to their laptops all day it surely sounds fun it may look funny but still i am i feel
that it unlocks a lot of potential that can be otherwise wasted so that's all i think till the next week when
i'll talk about some other use cases i'm also experimenting with image generation and so on but we'll see about that next time