corgi = Breed.create(name:'Corgi')
frenchie = Breed.create(name:'French Bulldog')
Mutt = Breed.create(name:'Mutt')
Grehound = Breed.create(name:'Greyhound')

Dog.create([
    {name: 'Tito', email: "kikuish@gmail.com",breed_id: '1', age: '1', location: 'Riverside, CA', description: 'Super cute pup! AKC certified. Loves cuddles.', image_url: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/14112506/Pembroke-Welsh-Corgi-standing-outdoors-in-the-fall.jpg'},
    {name: 'Gale', email: "owner@gmail.com",breed_id: '4', age: '10', location: 'Upland, CA', description: 'Overgrown cat. AKA retired greyhound. This dog is here for all the cuddles and is perfect for families.', image_url: 'https://minnesotagreyhoundrescue.org/wp-content/uploads/2017/10/14448841_10208815550160338_806195778504773190_n.jpg'},
    {name: 'Alice', email: "tony@gmail.com",breed_id: '4', age: '5', location: 'Rancho Cucamonga, CA', description: 'Kinda timid, but super friendly. A dog that finds happiness in pleasing its owners!', image_url: 'https://www.thoughtco.com/thmb/JXZCeysWTy_N7OMVssdCSWhOCm0=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/greyhound-coursing--clipping-path-included-104249063-5c8e6b6f46e0fb000146ad43.jpg'},
    {name: 'Yoda', email: "ling@gmail.com",breed_id: '3', age: '10', location: 'Fontana, CA', description: 'Cute dog. Kinda an airhead but that is part of her charm!', image_url: 'https://www.homeopet.com/wp-content/uploads/2018/12/grinning-mutt.jpg'},
    {name: 'Flatface', email: "jimmy@gmail.com",breed_id: '2', age: '2', location: 'Orange, CA', description: 'Genetically mutated dog', image_url: 'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2017/03/GettyImages-175065243-scaled-e1588320381398-920x697.jpg'},
    {name: 'Fatty', email: "hello@gmail.com",breed_id: '2', age: '4', location: 'Dallas, TX', description: 'Cute.', image_url: 'https://thehappypuppysite.com/wp-content/uploads/2019/03/White-French-Bulldog-long-1.jpg'}
])