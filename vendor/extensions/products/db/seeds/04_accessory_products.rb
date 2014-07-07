# encoding: UTF-8

product1 = Refinery::Products::Product.create!(product_no:'BBC014', name:'Ranger PJ-PK Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Ranger PJ-PK Commercial Bull Bar'.blank?
category1 = Refinery::Products::Category.find_by_name('Commercial')
product1.categories << category1 if category1.present? and product1.present?
vehicle1 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product1.vehicles << vehicle1 if vehicle1.present? and product1.present?
product2 = Refinery::Products::Product.create!(product_no:'BBC038', name:'Ranger PX Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Ranger PX Commercial Bull Bar'.blank?
category2 = Refinery::Products::Category.find_by_name('Commercial')
product2.categories << category2 if category2.present? and product2.present?
vehicle2 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product2.vehicles << vehicle2 if vehicle2.present? and product2.present?
product3 = Refinery::Products::Product.create!(product_no:'BBC003', name:'Rodeo RA Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Rodeo RA Commercial Bull Bar'.blank?
category3 = Refinery::Products::Category.find_by_name('Commercial')
product3.categories << category3 if category3.present? and product3.present?
vehicle3 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product3.vehicles << vehicle3 if vehicle3.present? and product3.present?
product4 = Refinery::Products::Product.create!(product_no:'BBC020', name:'Holden Rodeo RA7 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Holden Rodeo RA7 Commercial Bull Bar'.blank?
category4 = Refinery::Products::Category.find_by_name('Commercial')
product4.categories << category4 if category4.present? and product4.present?
vehicle4 = Refinery::Products::Vehicle.find_by_name('RA7 2003-2008')
product4.vehicles << vehicle4 if vehicle4.present? and product4.present?
product5 = Refinery::Products::Product.create!(product_no:'BBC021', name:'Holden Rodeo TF/KB Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Holden Rodeo TF/KB Commercial Bull Bar'.blank?
category5 = Refinery::Products::Category.find_by_name('Commercial')
product5.categories << category5 if category5.present? and product5.present?
vehicle5 = Refinery::Products::Vehicle.find_by_name('KB-TF 1981-1988')
product5.vehicles << vehicle5 if vehicle5.present? and product5.present?
product6 = Refinery::Products::Product.create!(product_no:'BBC040', name:'Colorado 2012+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Colorado 2012+ Commercial Bull Bar'.blank?
category6 = Refinery::Products::Category.find_by_name('Commercial')
product6.categories << category6 if category6.present? and product6.present?
vehicle6 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product6.vehicles << vehicle6 if vehicle6.present? and product6.present?
product7 = Refinery::Products::Product.create!(product_no:'BBC044', name:'Trailblazer / Colorado 7 2012+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Trailblazer / Colorado 7 2012+ Commercial Bull Bar'.blank?
category7 = Refinery::Products::Category.find_by_name('Commercial')
product7.categories << category7 if category7.present? and product7.present?
vehicle7 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product7.vehicles << vehicle7 if vehicle7.present? and product7.present?
product8 = Refinery::Products::Product.create!(product_no:'BBC027', name:'Colorado 2008-2012 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Colorado 2008-2012 Commercial Bull Bar'.blank?
category8 = Refinery::Products::Category.find_by_name('Commercial')
product8.categories << category8 if category8.present? and product8.present?
vehicle8 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product8.vehicles << vehicle8 if vehicle8.present? and product8.present?
product9 = Refinery::Products::Product.create!(product_no:'BBC020', name:'D-Max 2007-2011 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'D-Max 2007-2011 Commercial Bull Bar'.blank?
category9 = Refinery::Products::Category.find_by_name('Commercial')
product9.categories << category9 if category9.present? and product9.present?
vehicle9 = Refinery::Products::Vehicle.find_by_name('2007-2011')
product9.vehicles << vehicle9 if vehicle9.present? and product9.present?
product10 = Refinery::Products::Product.create!(product_no:'BBC041', name:'D-Max 2012+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'D-Max 2012+ Commercial Bull Bar'.blank?
category10 = Refinery::Products::Category.find_by_name('Commercial')
product10.categories << category10 if category10.present? and product10.present?
vehicle10 = Refinery::Products::Vehicle.find_by_name('2012+')
product10.vehicles << vehicle10 if vehicle10.present? and product10.present?
product11 = Refinery::Products::Product.create!(product_no:'BBC015', name:'Bravo 1996-2007 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Except V6)') if not 'Bravo 1996-2007 Commercial Bull Bar'.blank?
category11 = Refinery::Products::Category.find_by_name('Commercial')
product11.categories << category11 if category11.present? and product11.present?
vehicle11 = Refinery::Products::Vehicle.find_by_name('1996-2007')
product11.vehicles << vehicle11 if vehicle11.present? and product11.present?
product12 = Refinery::Products::Product.create!(product_no:'BBC024', name:'BT50 2007-2011 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'BT50 2007-2011 Commercial Bull Bar'.blank?
category12 = Refinery::Products::Category.find_by_name('Commercial')
product12.categories << category12 if category12.present? and product12.present?
vehicle12 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product12.vehicles << vehicle12 if vehicle12.present? and product12.present?
product13 = Refinery::Products::Product.create!(product_no:'BBC039', name:'BT50 2012+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'BT50 2012+ Commercial Bull Bar'.blank?
category13 = Refinery::Products::Category.find_by_name('Commercial')
product13.categories << category13 if category13.present? and product13.present?
vehicle13 = Refinery::Products::Vehicle.find_by_name('2012+')
product13.vehicles << vehicle13 if vehicle13.present? and product13.present?
product14 = Refinery::Products::Product.create!(product_no:'BBC036', name:'G-Wagen 2011+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'G-Wagen 2011+ Commercial Bull Bar'.blank?
category14 = Refinery::Products::Category.find_by_name('Commercial')
product14.categories << category14 if category14.present? and product14.present?
vehicle14 = Refinery::Products::Vehicle.find_by_name('2011+')
product14.vehicles << vehicle14 if vehicle14.present? and product14.present?
product15 = Refinery::Products::Product.create!(product_no:'BBC016', name:'Triton ML Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Triton ML Commercial Bull Bar'.blank?
category15 = Refinery::Products::Category.find_by_name('Commercial')
product15.categories << category15 if category15.present? and product15.present?
vehicle15 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product15.vehicles << vehicle15 if vehicle15.present? and product15.present?
product16 = Refinery::Products::Product.create!(product_no:'BBC016', name:'Challenger 2009+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Challenger 2009+ Commercial Bull Bar'.blank?
category16 = Refinery::Products::Category.find_by_name('Commercial')
product16.categories << category16 if category16.present? and product16.present?
vehicle16 = Refinery::Products::Vehicle.find_by_name('PB 2009-2013')
product16.vehicles << vehicle16 if vehicle16.present? and product16.present?
product17 = Refinery::Products::Product.create!(product_no:'BBC017', name:'Triton MK Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Triton MK Commercial Bull Bar'.blank?
category17 = Refinery::Products::Category.find_by_name('Commercial')
product17.categories << category17 if category17.present? and product17.present?
vehicle17 = Refinery::Products::Vehicle.find_by_name('MK 1996–2005')
product17.vehicles << vehicle17 if vehicle17.present? and product17.present?
product18 = Refinery::Products::Product.create!(product_no:'BBC031', name:'Triton MN Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Triton MN Commercial Bull Bar'.blank?
category18 = Refinery::Products::Category.find_by_name('Commercial')
product18.categories << category18 if category18.present? and product18.present?
vehicle18 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product18.vehicles << vehicle18 if vehicle18.present? and product18.present?
product19 = Refinery::Products::Product.create!(product_no:'BBC009', name:'Patrol GU S1-3 1998-2004 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Coil Spring Only)') if not 'Patrol GU S1-3 1998-2004 Commercial Bull Bar'.blank?
category19 = Refinery::Products::Category.find_by_name('Commercial')
product19.categories << category19 if category19.present? and product19.present?
vehicle19 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product19.vehicles << vehicle19 if vehicle19.present? and product19.present?
product20 = Refinery::Products::Product.create!(product_no:'BBC010', name:'Patrol GQ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Coil Spring Only)') if not 'Patrol GQ Commercial Bull Bar'.blank?
category20 = Refinery::Products::Category.find_by_name('Commercial')
product20.categories << category20 if category20.present? and product20.present?
vehicle20 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product20.vehicles << vehicle20 if vehicle20.present? and product20.present?
product21 = Refinery::Products::Product.create!(product_no:'BBC011', name:'Patrol GU S4+ 2005+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Coil Spring Only)') if not 'Patrol GU S4+ 2005+ Commercial Bull Bar'.blank?
category21 = Refinery::Products::Category.find_by_name('Commercial')
product21.categories << category21 if category21.present? and product21.present?
vehicle21 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product21.vehicles << vehicle21 if vehicle21.present? and product21.present?
product22 = Refinery::Products::Product.create!(product_no:'BBC013', name:'Navara D22 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Navara D22 Commercial Bull Bar'.blank?
category22 = Refinery::Products::Category.find_by_name('Commercial')
product22.categories << category22 if category22.present? and product22.present?
vehicle22 = Refinery::Products::Vehicle.find_by_name('D22')
product22.vehicles << vehicle22 if vehicle22.present? and product22.present?
product23 = Refinery::Products::Product.create!(product_no:'BBC012', name:'Navara D40 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Does not suit 2010+STX - Spain Build) / R51 Pathfinder (Pre 2010)') if not 'Navara D40 Commercial Bull Bar'.blank?
category23 = Refinery::Products::Category.find_by_name('Commercial')
product23.categories << category23 if category23.present? and product23.present?
vehicle23 = Refinery::Products::Vehicle.find_by_name('D40')
product23.vehicles << vehicle23 if vehicle23.present? and product23.present?
product24 = Refinery::Products::Product.create!(product_no:'BBC042', name:'Navara D40 450, 550 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'D40 with a smooth bumper, Chassis start with VSK.') if not 'Navara D40 450, 550 Commercial Bull Bar'.blank?
category24 = Refinery::Products::Category.find_by_name('Commercial')
product24.categories << category24 if category24.present? and product24.present?
vehicle24 = Refinery::Products::Vehicle.find_by_name('D40')
product24.vehicles << vehicle24 if vehicle24.present? and product24.present?
product25 = Refinery::Products::Product.create!(product_no:'BBC002', name:'Hilux 2005-2011 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Hilux 2005-2011 Commercial Bull Bar'.blank?
category25 = Refinery::Products::Category.find_by_name('Commercial')
product25.categories << category25 if category25.present? and product25.present?
vehicle25 = Refinery::Products::Vehicle.find_by_name('2005-2011')
product25.vehicles << vehicle25 if vehicle25.present? and product25.present?
product26 = Refinery::Products::Product.create!(product_no:'BBC007', name:'Prado 90 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Prado 90 Series Commercial Bull Bar'.blank?
category26 = Refinery::Products::Category.find_by_name('Commercial')
product26.categories << category26 if category26.present? and product26.present?
vehicle26 = Refinery::Products::Vehicle.find_by_name('90 Series')
product26.vehicles << vehicle26 if vehicle26.present? and product26.present?
product27 = Refinery::Products::Product.create!(product_no:'BBC008', name:'Prado 120 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Prado 120 Series Commercial Bull Bar'.blank?
category27 = Refinery::Products::Category.find_by_name('Commercial')
product27.categories << category27 if category27.present? and product27.present?
vehicle27 = Refinery::Products::Vehicle.find_by_name('120 Series')
product27.vehicles << vehicle27 if vehicle27.present? and product27.present?
product28 = Refinery::Products::Product.create!(product_no:'BBC029', name:'Prado 150 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Prado 150 Series Commercial Bull Bar'.blank?
category28 = Refinery::Products::Category.find_by_name('Commercial')
product28.categories << category28 if category28.present? and product28.present?
vehicle28 = Refinery::Products::Vehicle.find_by_name('150 Series')
product28.vehicles << vehicle28 if vehicle28.present? and product28.present?
product29 = Refinery::Products::Product.create!(product_no:'BBC018', name:'Landcrusier 75 Series 1984-2007 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcrusier 75 Series 1984-2007 Commercial Bull Bar'.blank?
category29 = Refinery::Products::Category.find_by_name('Commercial')
product29.categories << category29 if category29.present? and product29.present?
vehicle29 = Refinery::Products::Vehicle.find_by_name('75 Series 1984-2007')
product29.vehicles << vehicle29 if vehicle29.present? and product29.present?
product30 = Refinery::Products::Product.create!(product_no:'BBC018', name:'Landcrusier 78 Series 1984-2007 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcrusier 78 Series 1984-2007 Commercial Bull Bar'.blank?
category30 = Refinery::Products::Category.find_by_name('Commercial')
product30.categories << category30 if category30.present? and product30.present?
vehicle30 = Refinery::Products::Vehicle.find_by_name('78 Series 1984-2007')
product30.vehicles << vehicle30 if vehicle30.present? and product30.present?
product31 = Refinery::Products::Product.create!(product_no:'BBC018', name:'Landcrusier 79 Series 1984-2007 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcrusier 79 Series 1984-2007 Commercial Bull Bar'.blank?
category31 = Refinery::Products::Category.find_by_name('Commercial')
product31.categories << category31 if category31.present? and product31.present?
vehicle31 = Refinery::Products::Vehicle.find_by_name('79 Series 1984-2007')
product31.vehicles << vehicle31 if vehicle31.present? and product31.present?
product32 = Refinery::Products::Product.create!(product_no:'BBC019', name:'Landcrusier 70 Series 2007-2009 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Non Airbag)') if not 'Landcrusier 70 Series 2007-2009 Commercial Bull Bar'.blank?
category32 = Refinery::Products::Category.find_by_name('Commercial')
product32.categories << category32 if category32.present? and product32.present?
vehicle32 = Refinery::Products::Vehicle.find_by_name('70 Series 2007-2009')
product32.vehicles << vehicle32 if vehicle32.present? and product32.present?
product33 = Refinery::Products::Product.create!(product_no:'BBC019E', name:'Landcrusier 70 Series 2009+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Airbag)') if not 'Landcrusier 70 Series 2009+ Commercial Bull Bar'.blank?
category33 = Refinery::Products::Category.find_by_name('Commercial')
product33.categories << category33 if category33.present? and product33.present?
vehicle33 = Refinery::Products::Vehicle.find_by_name('70 Series 2009+')
product33.vehicles << vehicle33 if vehicle33.present? and product33.present?
product34 = Refinery::Products::Product.create!(product_no:'BBC004', name:'Landcruiser 80 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcruiser 80 Series Commercial Bull Bar'.blank?
category34 = Refinery::Products::Category.find_by_name('Commercial')
product34.categories << category34 if category34.present? and product34.present?
vehicle34 = Refinery::Products::Vehicle.find_by_name('80 Series')
product34.vehicles << vehicle34 if vehicle34.present? and product34.present?
product35 = Refinery::Products::Product.create!(product_no:'BBC005', name:'Landcruiser 105 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcruiser 105 Series Commercial Bull Bar'.blank?
category35 = Refinery::Products::Category.find_by_name('Commercial')
product35.categories << category35 if category35.present? and product35.present?
vehicle35 = Refinery::Products::Vehicle.find_by_name('105 Series')
product35.vehicles << vehicle35 if vehicle35.present? and product35.present?
product36 = Refinery::Products::Product.create!(product_no:'BBC006', name:'Landcruiser 100 Series IFS Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcruiser 100 Series IFS Commercial Bull Bar'.blank?
category36 = Refinery::Products::Category.find_by_name('Commercial')
product36.categories << category36 if category36.present? and product36.present?
vehicle36 = Refinery::Products::Vehicle.find_by_name('100 Series')
product36.vehicles << vehicle36 if vehicle36.present? and product36.present?
product37 = Refinery::Products::Product.create!(product_no:'BBC025', name:'Landcruiser 200 Series Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcruiser 200 Series Commercial Bull Bar'.blank?
category37 = Refinery::Products::Category.find_by_name('Commercial')
product37.categories << category37 if category37.present? and product37.present?
vehicle37 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product37.vehicles << vehicle37 if vehicle37.present? and product37.present?
product38 = Refinery::Products::Product.create!(product_no:'BBC043', name:'Landcruiser 200 Series 2012+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Landcruiser 200 Series 2012+ Commercial Bull Bar'.blank?
category38 = Refinery::Products::Category.find_by_name('Commercial')
product38.categories << category38 if category38.present? and product38.present?
vehicle38 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product38.vehicles << vehicle38 if vehicle38.present? and product38.present?
product39 = Refinery::Products::Product.create!(product_no:'BBC030', name:'Fortuner 2009+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Fortuner 2009+ Commercial Bull Bar'.blank?
category39 = Refinery::Products::Category.find_by_name('Commercial')
product39.categories << category39 if category39.present? and product39.present?
vehicle39 = Refinery::Products::Vehicle.find_by_name('2009+')
product39.vehicles << vehicle39 if vehicle39.present? and product39.present?
product40 = Refinery::Products::Product.create!(product_no:'BBC033', name:'Hilux 10/2011+ Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Hilux 10/2011+ Commercial Bull Bar'.blank?
category40 = Refinery::Products::Category.find_by_name('Commercial')
product40.categories << category40 if category40.present? and product40.present?
vehicle40 = Refinery::Products::Vehicle.find_by_name('10/2011+')
product40.vehicles << vehicle40 if vehicle40.present? and product40.present?
product41 = Refinery::Products::Product.create!(product_no:'BBC022', name:'Hilux 105/106 Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:'(Leaf Spring)') if not 'Hilux 105/106 Commercial Bull Bar'.blank?
category41 = Refinery::Products::Category.find_by_name('Commercial')
product41.categories << category41 if category41.present? and product41.present?
vehicle41 = Refinery::Products::Vehicle.find_by_name('105/106')
product41.vehicles << vehicle41 if vehicle41.present? and product41.present?
product42 = Refinery::Products::Product.create!(product_no:'BBC001', name:'Hilux 1997-2004 IFS Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Hilux 1997-2004 IFS Commercial Bull Bar'.blank?
category42 = Refinery::Products::Category.find_by_name('Commercial')
product42.categories << category42 if category42.present? and product42.present?
vehicle42 = Refinery::Products::Vehicle.find_by_name('1997-2004 IFS')
product42.vehicles << vehicle42 if vehicle42.present? and product42.present?
product43 = Refinery::Products::Product.create!(product_no:'BBC037', name:'FJ Cruiser Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'FJ Cruiser Commercial Bull Bar'.blank?
category43 = Refinery::Products::Category.find_by_name('Commercial')
product43.categories << category43 if category43.present? and product43.present?
vehicle43 = Refinery::Products::Vehicle.find_by_name('2006+')
product43.vehicles << vehicle43 if vehicle43.present? and product43.present?
product44 = Refinery::Products::Product.create!(product_no:'BBC034', name:'Amarok Commercial Bull Bar', description:'The Ironman 4x4 Commercial Winch Bull Bar is the perfect entry level bar for you 4x4. Featuring Airbag compatibility, Aerial mounts and winch compatibility and mount, it has everything you need to get your vehicle protected out on the tracks.', notes:nil) if not 'Amarok Commercial Bull Bar'.blank?
category44 = Refinery::Products::Category.find_by_name('Commercial')
product44.categories << category44 if category44.present? and product44.present?
vehicle44 = Refinery::Products::Vehicle.find_by_name('2010+')
product44.vehicles << vehicle44 if vehicle44.present? and product44.present?
product45 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category45 = Refinery::Products::Category.find_by_name('')
product45.categories << category45 if category45.present? and product45.present?
vehicle45 = Refinery::Products::Vehicle.find_by_name('')
product45.vehicles << vehicle45 if vehicle45.present? and product45.present?
product46 = Refinery::Products::Product.create!(product_no:'BBCD014', name:'Ranger PJ-PK Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Ranger PJ-PK Deluxe Commercial Bull Bar'.blank?
category46 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product46.categories << category46 if category46.present? and product46.present?
vehicle46 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product46.vehicles << vehicle46 if vehicle46.present? and product46.present?
product47 = Refinery::Products::Product.create!(product_no:'BBCD038', name:'Ranger PX Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Ranger PX Deluxe Commercial Bull Bar'.blank?
category47 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product47.categories << category47 if category47.present? and product47.present?
vehicle47 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product47.vehicles << vehicle47 if vehicle47.present? and product47.present?
product48 = Refinery::Products::Product.create!(product_no:'BBCD003', name:'Rodeo RA Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Rodeo RA Deluxe Commercial Bull Bar'.blank?
category48 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product48.categories << category48 if category48.present? and product48.present?
vehicle48 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product48.vehicles << vehicle48 if vehicle48.present? and product48.present?
product49 = Refinery::Products::Product.create!(product_no:'BBCD020', name:'Rodeo RA7 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Rodeo RA7 Deluxe Commercial Bull Bar'.blank?
category49 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product49.categories << category49 if category49.present? and product49.present?
vehicle49 = Refinery::Products::Vehicle.find_by_name('RA7 2003-2008')
product49.vehicles << vehicle49 if vehicle49.present? and product49.present?
product50 = Refinery::Products::Product.create!(product_no:'BBCD021', name:'Rodeo TF/KB Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Rodeo TF/KB Deluxe Commercial Bull Bar'.blank?
category50 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product50.categories << category50 if category50.present? and product50.present?
vehicle50 = Refinery::Products::Vehicle.find_by_name('KB-TF 1981-1988')
product50.vehicles << vehicle50 if vehicle50.present? and product50.present?
product51 = Refinery::Products::Product.create!(product_no:'BBCD027', name:'Colorado 2008-2012 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Colorado 2008-2012 Deluxe Commercial Bull Bar'.blank?
category51 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product51.categories << category51 if category51.present? and product51.present?
vehicle51 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product51.vehicles << vehicle51 if vehicle51.present? and product51.present?
product52 = Refinery::Products::Product.create!(product_no:'BBCD040', name:'Colorado 2012+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Colorado 2012+ Deluxe Commercial Bull Bar'.blank?
category52 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product52.categories << category52 if category52.present? and product52.present?
vehicle52 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product52.vehicles << vehicle52 if vehicle52.present? and product52.present?
product53 = Refinery::Products::Product.create!(product_no:'BBCD044', name:'Trailblazer / Colorado 7 2012+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Trailblazer / Colorado 7 2012+ Deluxe Commercial Bull Bar'.blank?
category53 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product53.categories << category53 if category53.present? and product53.present?
vehicle53 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product53.vehicles << vehicle53 if vehicle53.present? and product53.present?
product54 = Refinery::Products::Product.create!(product_no:'BBCD020', name:'D-Max 2007-2011 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'D-Max 2007-2011 Deluxe Commercial Bull Bar'.blank?
category54 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product54.categories << category54 if category54.present? and product54.present?
vehicle54 = Refinery::Products::Vehicle.find_by_name('2007-2011')
product54.vehicles << vehicle54 if vehicle54.present? and product54.present?
product55 = Refinery::Products::Product.create!(product_no:'BBCD041', name:'D-Max 2012+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'D-Max 2012+ Deluxe Commercial Bull Bar'.blank?
category55 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product55.categories << category55 if category55.present? and product55.present?
vehicle55 = Refinery::Products::Vehicle.find_by_name('2012+')
product55.vehicles << vehicle55 if vehicle55.present? and product55.present?
product56 = Refinery::Products::Product.create!(product_no:'BBCD035', name:'Wrangler JK Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Wrangler JK Deluxe Commercial Bull Bar'.blank?
category56 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product56.categories << category56 if category56.present? and product56.present?
vehicle56 = Refinery::Products::Vehicle.find_by_name('JK')
product56.vehicles << vehicle56 if vehicle56.present? and product56.present?
product57 = Refinery::Products::Product.create!(product_no:'BBCD015', name:'Bravo 1996-2007 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Except V6)') if not 'Bravo 1996-2007 Deluxe Commercial Bull Bar'.blank?
category57 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product57.categories << category57 if category57.present? and product57.present?
vehicle57 = Refinery::Products::Vehicle.find_by_name('1996-2007')
product57.vehicles << vehicle57 if vehicle57.present? and product57.present?
product58 = Refinery::Products::Product.create!(product_no:'BBCD039', name:'BT50 2012+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'BT50 2012+ Deluxe Commercial Bull Bar'.blank?
category58 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product58.categories << category58 if category58.present? and product58.present?
vehicle58 = Refinery::Products::Vehicle.find_by_name('2012+')
product58.vehicles << vehicle58 if vehicle58.present? and product58.present?
product59 = Refinery::Products::Product.create!(product_no:'BBCD024', name:'BT50 2007-2011 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'BT50 2007-2011 Deluxe Commercial Bull Bar'.blank?
category59 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product59.categories << category59 if category59.present? and product59.present?
vehicle59 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product59.vehicles << vehicle59 if vehicle59.present? and product59.present?
product60 = Refinery::Products::Product.create!(product_no:'BBCD036', name:'G-Wagen 2011+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'G-Wagen 2011+ Deluxe Commercial Bull Bar'.blank?
category60 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product60.categories << category60 if category60.present? and product60.present?
vehicle60 = Refinery::Products::Vehicle.find_by_name('2011+')
product60.vehicles << vehicle60 if vehicle60.present? and product60.present?
product61 = Refinery::Products::Product.create!(product_no:'BBCD016', name:'Triton ML Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Triton ML Deluxe Commercial Bull Bar'.blank?
category61 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product61.categories << category61 if category61.present? and product61.present?
vehicle61 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product61.vehicles << vehicle61 if vehicle61.present? and product61.present?
product62 = Refinery::Products::Product.create!(product_no:'BBCD016', name:'Challenger 2009+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Challenger 2009+ Deluxe Commercial Bull Bar'.blank?
category62 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product62.categories << category62 if category62.present? and product62.present?
vehicle62 = Refinery::Products::Vehicle.find_by_name('PB 2009-2013')
product62.vehicles << vehicle62 if vehicle62.present? and product62.present?
product63 = Refinery::Products::Product.create!(product_no:'BBCD017', name:'Triton MK Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Triton MK Deluxe Commercial Bull Bar'.blank?
category63 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product63.categories << category63 if category63.present? and product63.present?
vehicle63 = Refinery::Products::Vehicle.find_by_name('MK 1996–2005')
product63.vehicles << vehicle63 if vehicle63.present? and product63.present?
product64 = Refinery::Products::Product.create!(product_no:'BBCD031', name:'Triton MN Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Triton MN Deluxe Commercial Bull Bar'.blank?
category64 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product64.categories << category64 if category64.present? and product64.present?
vehicle64 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product64.vehicles << vehicle64 if vehicle64.present? and product64.present?
product65 = Refinery::Products::Product.create!(product_no:'BBCD010', name:'Patrol GQ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Coil Spring Only)') if not 'Patrol GQ Deluxe Commercial Bull Bar'.blank?
category65 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product65.categories << category65 if category65.present? and product65.present?
vehicle65 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product65.vehicles << vehicle65 if vehicle65.present? and product65.present?
product66 = Refinery::Products::Product.create!(product_no:'BBCD009', name:'Patrol GU S1-3 1998-2004 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Coil Spring Only)') if not 'Patrol GU S1-3 1998-2004 Deluxe Commercial Bull Bar'.blank?
category66 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product66.categories << category66 if category66.present? and product66.present?
vehicle66 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product66.vehicles << vehicle66 if vehicle66.present? and product66.present?
product67 = Refinery::Products::Product.create!(product_no:'BBCD011', name:'Patrol GU S4+ 2005+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Coil Spring Only)') if not 'Patrol GU S4+ 2005+ Deluxe Commercial Bull Bar'.blank?
category67 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product67.categories << category67 if category67.present? and product67.present?
vehicle67 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product67.vehicles << vehicle67 if vehicle67.present? and product67.present?
product68 = Refinery::Products::Product.create!(product_no:'BBCD012', name:'Navara D40 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Does not suit 2010+STX - Spain Build) / R51 Pathfinder (Pre 2010)') if not 'Navara D40 Deluxe Commercial Bull Bar'.blank?
category68 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product68.categories << category68 if category68.present? and product68.present?
vehicle68 = Refinery::Products::Vehicle.find_by_name('D40')
product68.vehicles << vehicle68 if vehicle68.present? and product68.present?
product69 = Refinery::Products::Product.create!(product_no:'BBCD013', name:'Navara D22 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Navara D22 Deluxe Commercial Bull Bar'.blank?
category69 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product69.categories << category69 if category69.present? and product69.present?
vehicle69 = Refinery::Products::Vehicle.find_by_name('D22')
product69.vehicles << vehicle69 if vehicle69.present? and product69.present?
product70 = Refinery::Products::Product.create!(product_no:'BBCD042', name:'Navara D40 450, 550 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'( Spain Built suit D-40 with a smooth bumper, Chassis start with VSK.. )') if not 'Navara D40 450, 550 Deluxe Commercial Bull Bar'.blank?
category70 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product70.categories << category70 if category70.present? and product70.present?
vehicle70 = Refinery::Products::Vehicle.find_by_name('D40')
product70.vehicles << vehicle70 if vehicle70.present? and product70.present?
product71 = Refinery::Products::Product.create!(product_no:'BBCD001', name:'Hilux 1997-2004 IFS Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Hilux 1997-2004 IFS Deluxe Commercial Bull Bar'.blank?
category71 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product71.categories << category71 if category71.present? and product71.present?
vehicle71 = Refinery::Products::Vehicle.find_by_name('1997-2004 IFS')
product71.vehicles << vehicle71 if vehicle71.present? and product71.present?
product72 = Refinery::Products::Product.create!(product_no:'BBCD002', name:'Hilux 2005-2011 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Hilux 2005-2011 Deluxe Commercial Bull Bar'.blank?
category72 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product72.categories << category72 if category72.present? and product72.present?
vehicle72 = Refinery::Products::Vehicle.find_by_name('2005-2011')
product72.vehicles << vehicle72 if vehicle72.present? and product72.present?
product73 = Refinery::Products::Product.create!(product_no:'BBCD004', name:'Landcruiser 80 Series Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcruiser 80 Series Deluxe Commercial Bull Bar'.blank?
category73 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product73.categories << category73 if category73.present? and product73.present?
vehicle73 = Refinery::Products::Vehicle.find_by_name('80 Series')
product73.vehicles << vehicle73 if vehicle73.present? and product73.present?
product74 = Refinery::Products::Product.create!(product_no:'BBCD005', name:'Landcruiser 105 Series Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcruiser 105 Series Deluxe Commercial Bull Bar'.blank?
category74 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product74.categories << category74 if category74.present? and product74.present?
vehicle74 = Refinery::Products::Vehicle.find_by_name('105 Series')
product74.vehicles << vehicle74 if vehicle74.present? and product74.present?
product75 = Refinery::Products::Product.create!(product_no:'BBCD006', name:'Landcruiser 100 IFS Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcruiser 100 IFS Deluxe Commercial Bull Bar'.blank?
category75 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product75.categories << category75 if category75.present? and product75.present?
vehicle75 = Refinery::Products::Vehicle.find_by_name('100 Series')
product75.vehicles << vehicle75 if vehicle75.present? and product75.present?
product76 = Refinery::Products::Product.create!(product_no:'BBCD007', name:'Prado 90 Series Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Prado 90 Series Deluxe Commercial Bull Bar'.blank?
category76 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product76.categories << category76 if category76.present? and product76.present?
vehicle76 = Refinery::Products::Vehicle.find_by_name('90 Series')
product76.vehicles << vehicle76 if vehicle76.present? and product76.present?
product77 = Refinery::Products::Product.create!(product_no:'BBCD008', name:'Prado 120 Series Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Prado 120 Series Deluxe Commercial Bull Bar'.blank?
category77 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product77.categories << category77 if category77.present? and product77.present?
vehicle77 = Refinery::Products::Vehicle.find_by_name('120 Series')
product77.vehicles << vehicle77 if vehicle77.present? and product77.present?
product78 = Refinery::Products::Product.create!(product_no:'BBCD029', name:'Prado 150 Series Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Prado 150 Series Deluxe Commercial Bull Bar'.blank?
category78 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product78.categories << category78 if category78.present? and product78.present?
vehicle78 = Refinery::Products::Vehicle.find_by_name('150 Series')
product78.vehicles << vehicle78 if vehicle78.present? and product78.present?
product79 = Refinery::Products::Product.create!(product_no:'BBCD019', name:'Landcrusier 70 2007-2009 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Non Airbag)') if not 'Landcrusier 70 2007-2009 Deluxe Commercial Bull Bar'.blank?
category79 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product79.categories << category79 if category79.present? and product79.present?
vehicle79 = Refinery::Products::Vehicle.find_by_name('70 Series 2007-2009')
product79.vehicles << vehicle79 if vehicle79.present? and product79.present?
product80 = Refinery::Products::Product.create!(product_no:'BBCD019E', name:'Landcrusier 70 2009+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:'(Airbag)') if not 'Landcrusier 70 2009+ Deluxe Commercial Bull Bar'.blank?
category80 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product80.categories << category80 if category80.present? and product80.present?
vehicle80 = Refinery::Products::Vehicle.find_by_name('70 Series 2009+')
product80.vehicles << vehicle80 if vehicle80.present? and product80.present?
product81 = Refinery::Products::Product.create!(product_no:'BBCD018', name:'Landcrusier 75 Series 1984-2007 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcrusier 75 Series 1984-2007 Deluxe Commercial Bull Bar'.blank?
category81 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product81.categories << category81 if category81.present? and product81.present?
vehicle81 = Refinery::Products::Vehicle.find_by_name('75 Series 1984-2007')
product81.vehicles << vehicle81 if vehicle81.present? and product81.present?
product82 = Refinery::Products::Product.create!(product_no:'BBCD018', name:'Landcrusier 78 Series 1984-2007 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcrusier 78 Series 1984-2007 Deluxe Commercial Bull Bar'.blank?
category82 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product82.categories << category82 if category82.present? and product82.present?
vehicle82 = Refinery::Products::Vehicle.find_by_name('78 Series 1984-2007')
product82.vehicles << vehicle82 if vehicle82.present? and product82.present?
product83 = Refinery::Products::Product.create!(product_no:'BBCD018', name:'Landcrusier 79 Series 1984-2007 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcrusier 79 Series 1984-2007 Deluxe Commercial Bull Bar'.blank?
category83 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product83.categories << category83 if category83.present? and product83.present?
vehicle83 = Refinery::Products::Vehicle.find_by_name('79 Series 1984-2007')
product83.vehicles << vehicle83 if vehicle83.present? and product83.present?
product84 = Refinery::Products::Product.create!(product_no:'BBCD025', name:'Landcruiser 200 Series 2008-2011 Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcruiser 200 Series 2008-2011 Deluxe Commercial Bull Bar'.blank?
category84 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product84.categories << category84 if category84.present? and product84.present?
vehicle84 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2011')
product84.vehicles << vehicle84 if vehicle84.present? and product84.present?
product85 = Refinery::Products::Product.create!(product_no:'BBCD043', name:'Landcruiser 200 Series 2012+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Landcruiser 200 Series 2012+ Deluxe Commercial Bull Bar'.blank?
category85 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product85.categories << category85 if category85.present? and product85.present?
vehicle85 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product85.vehicles << vehicle85 if vehicle85.present? and product85.present?
product86 = Refinery::Products::Product.create!(product_no:'BBCD030', name:'Fortuner 2009+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Fortuner 2009+ Deluxe Commercial Bull Bar'.blank?
category86 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product86.categories << category86 if category86.present? and product86.present?
vehicle86 = Refinery::Products::Vehicle.find_by_name('2009+')
product86.vehicles << vehicle86 if vehicle86.present? and product86.present?
product87 = Refinery::Products::Product.create!(product_no:'BBCD033', name:'Hilux 10/2011+ Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Hilux 10/2011+ Deluxe Commercial Bull Bar'.blank?
category87 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product87.categories << category87 if category87.present? and product87.present?
vehicle87 = Refinery::Products::Vehicle.find_by_name('10/2011+')
product87.vehicles << vehicle87 if vehicle87.present? and product87.present?
product88 = Refinery::Products::Product.create!(product_no:'BBCD037', name:'FJ Cruiser Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'FJ Cruiser Deluxe Commercial Bull Bar'.blank?
category88 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product88.categories << category88 if category88.present? and product88.present?
vehicle88 = Refinery::Products::Vehicle.find_by_name('2006+')
product88.vehicles << vehicle88 if vehicle88.present? and product88.present?
product89 = Refinery::Products::Product.create!(product_no:'BBCD034', name:'Amarok Deluxe Commercial Bull Bar', description:'The Ironman 4x4 Deluxe Commercial Winch Bull Bar is an evolution of our much loved Commerical Winch Bull Bar. With the addition of integrated fog lights the Deluxe bar improves your night time driving experience whilst still retaining airbag and winch compatibility.', notes:nil) if not 'Amarok Deluxe Commercial Bull Bar'.blank?
category89 = Refinery::Products::Category.find_by_name('Deluxe Commercial')
product89.categories << category89 if category89.present? and product89.present?
vehicle89 = Refinery::Products::Vehicle.find_by_name('2010+')
product89.vehicles << vehicle89 if vehicle89.present? and product89.present?
product90 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category90 = Refinery::Products::Category.find_by_name('')
product90.categories << category90 if category90.present? and product90.present?
vehicle90 = Refinery::Products::Vehicle.find_by_name('')
product90.vehicles << vehicle90 if vehicle90.present? and product90.present?
product91 = Refinery::Products::Product.create!(product_no:'BBT014', name:'Ranger PJ-PK Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Ranger PJ-PK Protector Bull Bar'.blank?
category91 = Refinery::Products::Category.find_by_name('Protector')
product91.categories << category91 if category91.present? and product91.present?
vehicle91 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product91.vehicles << vehicle91 if vehicle91.present? and product91.present?
product92 = Refinery::Products::Product.create!(product_no:'BBT038', name:'Ranger PJ-PK Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Ranger PJ-PK Protector Bull Bar'.blank?
category92 = Refinery::Products::Category.find_by_name('Protector')
product92.categories << category92 if category92.present? and product92.present?
vehicle92 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product92.vehicles << vehicle92 if vehicle92.present? and product92.present?
product93 = Refinery::Products::Product.create!(product_no:'BBT027', name:'Colorado 2008-2012 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Colorado 2008-2012 Protector Bull Bar'.blank?
category93 = Refinery::Products::Category.find_by_name('Protector')
product93.categories << category93 if category93.present? and product93.present?
vehicle93 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product93.vehicles << vehicle93 if vehicle93.present? and product93.present?
product94 = Refinery::Products::Product.create!(product_no:'BBT040', name:'Colorado 2012+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Colorado 2012+ Protector Bull Bar'.blank?
category94 = Refinery::Products::Category.find_by_name('Protector')
product94.categories << category94 if category94.present? and product94.present?
vehicle94 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product94.vehicles << vehicle94 if vehicle94.present? and product94.present?
product95 = Refinery::Products::Product.create!(product_no:'BBT003', name:'Rodeo RA Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Rodeo RA Protector Bull Bar'.blank?
category95 = Refinery::Products::Category.find_by_name('Protector')
product95.categories << category95 if category95.present? and product95.present?
vehicle95 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product95.vehicles << vehicle95 if vehicle95.present? and product95.present?
product96 = Refinery::Products::Product.create!(product_no:'BBT020', name:'Rodeo RA7 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Rodeo RA7 Protector Bull Bar'.blank?
category96 = Refinery::Products::Category.find_by_name('Protector')
product96.categories << category96 if category96.present? and product96.present?
vehicle96 = Refinery::Products::Vehicle.find_by_name('RA7 2003-2008')
product96.vehicles << vehicle96 if vehicle96.present? and product96.present?
product97 = Refinery::Products::Product.create!(product_no:'BBT021', name:'Rodeo TF/KB Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Rodeo TF/KB Protector Bull Bar'.blank?
category97 = Refinery::Products::Category.find_by_name('Protector')
product97.categories << category97 if category97.present? and product97.present?
vehicle97 = Refinery::Products::Vehicle.find_by_name('KB-TF 1981-1988')
product97.vehicles << vehicle97 if vehicle97.present? and product97.present?
product98 = Refinery::Products::Product.create!(product_no:'BBT041', name:'D-Max 2012+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'D-Max 2012+ Protector Bull Bar'.blank?
category98 = Refinery::Products::Category.find_by_name('Protector')
product98.categories << category98 if category98.present? and product98.present?
vehicle98 = Refinery::Products::Vehicle.find_by_name('2012+')
product98.vehicles << vehicle98 if vehicle98.present? and product98.present?
product99 = Refinery::Products::Product.create!(product_no:'BBT020', name:'D-Max 2007-2011 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'D-Max 2007-2011 Protector Bull Bar'.blank?
category99 = Refinery::Products::Category.find_by_name('Protector')
product99.categories << category99 if category99.present? and product99.present?
vehicle99 = Refinery::Products::Vehicle.find_by_name('2007-2011')
product99.vehicles << vehicle99 if vehicle99.present? and product99.present?
product100 = Refinery::Products::Product.create!(product_no:'BBT024', name:'BT50 2007-2011 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'BT50 2007-2011 Protector Bull Bar'.blank?
category100 = Refinery::Products::Category.find_by_name('Protector')
product100.categories << category100 if category100.present? and product100.present?
vehicle100 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product100.vehicles << vehicle100 if vehicle100.present? and product100.present?
product101 = Refinery::Products::Product.create!(product_no:'BBT039', name:'BT50 2012+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'BT50 2012+ Protector Bull Bar'.blank?
category101 = Refinery::Products::Category.find_by_name('Protector')
product101.categories << category101 if category101.present? and product101.present?
vehicle101 = Refinery::Products::Vehicle.find_by_name('2012+')
product101.vehicles << vehicle101 if vehicle101.present? and product101.present?
product102 = Refinery::Products::Product.create!(product_no:'BBT015', name:'Bravo 1996-2007 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Except V6)') if not 'Bravo 1996-2007 Protector Bull Bar'.blank?
category102 = Refinery::Products::Category.find_by_name('Protector')
product102.categories << category102 if category102.present? and product102.present?
vehicle102 = Refinery::Products::Vehicle.find_by_name('1996-2007')
product102.vehicles << vehicle102 if vehicle102.present? and product102.present?
product103 = Refinery::Products::Product.create!(product_no:'BBT016', name:'Triton ML Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Triton ML Protector Bull Bar'.blank?
category103 = Refinery::Products::Category.find_by_name('Protector')
product103.categories << category103 if category103.present? and product103.present?
vehicle103 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product103.vehicles << vehicle103 if vehicle103.present? and product103.present?
product104 = Refinery::Products::Product.create!(product_no:'BBT016', name:'Challenger 2009+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Challenger 2009+ Protector Bull Bar'.blank?
category104 = Refinery::Products::Category.find_by_name('Protector')
product104.categories << category104 if category104.present? and product104.present?
vehicle104 = Refinery::Products::Vehicle.find_by_name('PB 2009-2013')
product104.vehicles << vehicle104 if vehicle104.present? and product104.present?
product105 = Refinery::Products::Product.create!(product_no:'BBT017', name:'Triton MK Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Triton MK Protector Bull Bar'.blank?
category105 = Refinery::Products::Category.find_by_name('Protector')
product105.categories << category105 if category105.present? and product105.present?
vehicle105 = Refinery::Products::Vehicle.find_by_name('MK 1996–2005')
product105.vehicles << vehicle105 if vehicle105.present? and product105.present?
product106 = Refinery::Products::Product.create!(product_no:'BBT031', name:'Triton MN Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Triton MN Protector Bull Bar'.blank?
category106 = Refinery::Products::Category.find_by_name('Protector')
product106.categories << category106 if category106.present? and product106.present?
vehicle106 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product106.vehicles << vehicle106 if vehicle106.present? and product106.present?
product107 = Refinery::Products::Product.create!(product_no:'BBT010', name:'Patrol GQ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Coil Spring Only)') if not 'Patrol GQ Protector Bull Bar'.blank?
category107 = Refinery::Products::Category.find_by_name('Protector')
product107.categories << category107 if category107.present? and product107.present?
vehicle107 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product107.vehicles << vehicle107 if vehicle107.present? and product107.present?
product108 = Refinery::Products::Product.create!(product_no:'BBT009', name:'Patrol GU 1998-2004 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Coil Spring Only)') if not 'Patrol GU 1998-2004 Protector Bull Bar'.blank?
category108 = Refinery::Products::Category.find_by_name('Protector')
product108.categories << category108 if category108.present? and product108.present?
vehicle108 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product108.vehicles << vehicle108 if vehicle108.present? and product108.present?
product109 = Refinery::Products::Product.create!(product_no:'BBT011', name:'Patrol GU S4 2005+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Coil Spring Only)') if not 'Patrol GU S4 2005+ Protector Bull Bar'.blank?
category109 = Refinery::Products::Category.find_by_name('Protector')
product109.categories << category109 if category109.present? and product109.present?
vehicle109 = Refinery::Products::Vehicle.find_by_name('GU S4 2005+')
product109.vehicles << vehicle109 if vehicle109.present? and product109.present?
product110 = Refinery::Products::Product.create!(product_no:'BBT012', name:'Navara D40 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Does not suit 2010+ STX- Spain Build)') if not 'Navara D40 Protector Bull Bar'.blank?
category110 = Refinery::Products::Category.find_by_name('Protector')
product110.categories << category110 if category110.present? and product110.present?
vehicle110 = Refinery::Products::Vehicle.find_by_name('D40')
product110.vehicles << vehicle110 if vehicle110.present? and product110.present?
product111 = Refinery::Products::Product.create!(product_no:'BBT012', name:'R51 Pathfinder Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'Suits 2010+ Models') if not 'R51 Pathfinder Protector Bull Bar'.blank?
category111 = Refinery::Products::Category.find_by_name('Protector')
product111.categories << category111 if category111.present? and product111.present?
vehicle111 = Refinery::Products::Vehicle.find_by_name('R51')
product111.vehicles << vehicle111 if vehicle111.present? and product111.present?
product112 = Refinery::Products::Product.create!(product_no:'BBT013', name:'Nissan Navara D22 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Nissan Navara D22 Protector Bull Bar'.blank?
category112 = Refinery::Products::Category.find_by_name('Protector')
product112.categories << category112 if category112.present? and product112.present?
vehicle112 = Refinery::Products::Vehicle.find_by_name('D22')
product112.vehicles << vehicle112 if vehicle112.present? and product112.present?
product113 = Refinery::Products::Product.create!(product_no:'BBT042', name:'Navara D40 450, 550 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Spain Built suit D-40 with a smooth bumper, Chassis start with VSK.. )') if not 'Navara D40 450, 550 Protector Bull Bar'.blank?
category113 = Refinery::Products::Category.find_by_name('Protector')
product113.categories << category113 if category113.present? and product113.present?
vehicle113 = Refinery::Products::Vehicle.find_by_name('D40')
product113.vehicles << vehicle113 if vehicle113.present? and product113.present?
product114 = Refinery::Products::Product.create!(product_no:'BBT007', name:'Prado 90 Series Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Prado 90 Series Protector Bull Bar'.blank?
category114 = Refinery::Products::Category.find_by_name('Protector')
product114.categories << category114 if category114.present? and product114.present?
vehicle114 = Refinery::Products::Vehicle.find_by_name('90 Series')
product114.vehicles << vehicle114 if vehicle114.present? and product114.present?
product115 = Refinery::Products::Product.create!(product_no:'BBT008', name:'Prado 120 Series Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Prado 120 Series Protector Bull Bar'.blank?
category115 = Refinery::Products::Category.find_by_name('Protector')
product115.categories << category115 if category115.present? and product115.present?
vehicle115 = Refinery::Products::Vehicle.find_by_name('120 Series')
product115.vehicles << vehicle115 if vehicle115.present? and product115.present?
product116 = Refinery::Products::Product.create!(product_no:'BBT029', name:'Prado 150 Series Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Prado 150 Series Protector Bull Bar'.blank?
category116 = Refinery::Products::Category.find_by_name('Protector')
product116.categories << category116 if category116.present? and product116.present?
vehicle116 = Refinery::Products::Vehicle.find_by_name('150 Series')
product116.vehicles << vehicle116 if vehicle116.present? and product116.present?
product117 = Refinery::Products::Product.create!(product_no:'BBT037', name:'FJ Cruiser Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'FJ Cruiser Protector Bull Bar'.blank?
category117 = Refinery::Products::Category.find_by_name('Protector')
product117.categories << category117 if category117.present? and product117.present?
vehicle117 = Refinery::Products::Vehicle.find_by_name('2006+')
product117.vehicles << vehicle117 if vehicle117.present? and product117.present?
product118 = Refinery::Products::Product.create!(product_no:'BBT030', name:'Fortuner 2009+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Fortuner 2009+ Protector Bull Bar'.blank?
category118 = Refinery::Products::Category.find_by_name('Protector')
product118.categories << category118 if category118.present? and product118.present?
vehicle118 = Refinery::Products::Vehicle.find_by_name('2009+')
product118.vehicles << vehicle118 if vehicle118.present? and product118.present?
product119 = Refinery::Products::Product.create!(product_no:'BBT033', name:'Toyota Hilux 10/2011+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Toyota Hilux 10/2011+ Protector Bull Bar'.blank?
category119 = Refinery::Products::Category.find_by_name('Protector')
product119.categories << category119 if category119.present? and product119.present?
vehicle119 = Refinery::Products::Vehicle.find_by_name('10/2011+')
product119.vehicles << vehicle119 if vehicle119.present? and product119.present?
product120 = Refinery::Products::Product.create!(product_no:'BBT001', name:'Hilux 1997-2004 IFS Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Hilux 1997-2004 IFS Protector Bull Bar'.blank?
category120 = Refinery::Products::Category.find_by_name('Protector')
product120.categories << category120 if category120.present? and product120.present?
vehicle120 = Refinery::Products::Vehicle.find_by_name('1997-2004 IFS')
product120.vehicles << vehicle120 if vehicle120.present? and product120.present?
product121 = Refinery::Products::Product.create!(product_no:'BBT002', name:'Hilux 2005-2011 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Hilux 2005-2011 Protector Bull Bar'.blank?
category121 = Refinery::Products::Category.find_by_name('Protector')
product121.categories << category121 if category121.present? and product121.present?
vehicle121 = Refinery::Products::Vehicle.find_by_name('2005-2011')
product121.vehicles << vehicle121 if vehicle121.present? and product121.present?
product122 = Refinery::Products::Product.create!(product_no:'BBT022', name:'Hilux 105/106 (Leaf Spring) Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Hilux 105/106 (Leaf Spring) Protector Bull Bar'.blank?
category122 = Refinery::Products::Category.find_by_name('Protector')
product122.categories << category122 if category122.present? and product122.present?
vehicle122 = Refinery::Products::Vehicle.find_by_name('105/106 (Leaf Spring)')
product122.vehicles << vehicle122 if vehicle122.present? and product122.present?
product123 = Refinery::Products::Product.create!(product_no:'BBT018', name:'Landcrusier 75 Series 1984-2007 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcrusier 75 Series 1984-2007 Protector Bull Bar'.blank?
category123 = Refinery::Products::Category.find_by_name('Protector')
product123.categories << category123 if category123.present? and product123.present?
vehicle123 = Refinery::Products::Vehicle.find_by_name('75 Series 1984-2007')
product123.vehicles << vehicle123 if vehicle123.present? and product123.present?
product124 = Refinery::Products::Product.create!(product_no:'BBT018', name:'Landcrusier 78 Series 1984-2007 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcrusier 78 Series 1984-2007 Protector Bull Bar'.blank?
category124 = Refinery::Products::Category.find_by_name('Protector')
product124.categories << category124 if category124.present? and product124.present?
vehicle124 = Refinery::Products::Vehicle.find_by_name('78 Series 1984-2007')
product124.vehicles << vehicle124 if vehicle124.present? and product124.present?
product125 = Refinery::Products::Product.create!(product_no:'BBT018', name:'Landcrusier 79 Series 1984-2007 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcrusier 79 Series 1984-2007 Protector Bull Bar'.blank?
category125 = Refinery::Products::Category.find_by_name('Protector')
product125.categories << category125 if category125.present? and product125.present?
vehicle125 = Refinery::Products::Vehicle.find_by_name('79 Series 1984-2007')
product125.vehicles << vehicle125 if vehicle125.present? and product125.present?
product126 = Refinery::Products::Product.create!(product_no:'BBT019', name:'Landcrusier 70 Series 2007-2009 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Non Airbag)') if not 'Landcrusier 70 Series 2007-2009 Protector Bull Bar'.blank?
category126 = Refinery::Products::Category.find_by_name('Protector')
product126.categories << category126 if category126.present? and product126.present?
vehicle126 = Refinery::Products::Vehicle.find_by_name('70 Series 2007-2009')
product126.vehicles << vehicle126 if vehicle126.present? and product126.present?
product127 = Refinery::Products::Product.create!(product_no:'BBT019E', name:'Landcrusier 70 Series 2009+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:'(Airbag)') if not 'Landcrusier 70 Series 2009+ Protector Bull Bar'.blank?
category127 = Refinery::Products::Category.find_by_name('Protector')
product127.categories << category127 if category127.present? and product127.present?
vehicle127 = Refinery::Products::Vehicle.find_by_name('70 Series 2009+')
product127.vehicles << vehicle127 if vehicle127.present? and product127.present?
product128 = Refinery::Products::Product.create!(product_no:'BBT004', name:'Landcruiser 80 Series Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not ' Landcruiser 80 Series Protector Bull Bar'.blank?
category128 = Refinery::Products::Category.find_by_name('Protector')
product128.categories << category128 if category128.present? and product128.present?
vehicle128 = Refinery::Products::Vehicle.find_by_name('80 Series')
product128.vehicles << vehicle128 if vehicle128.present? and product128.present?
product129 = Refinery::Products::Product.create!(product_no:'BBT005', name:'Landcruiser 105 Series Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcruiser 105 Series Protector Bull Bar'.blank?
category129 = Refinery::Products::Category.find_by_name('Protector')
product129.categories << category129 if category129.present? and product129.present?
vehicle129 = Refinery::Products::Vehicle.find_by_name('105 Series')
product129.vehicles << vehicle129 if vehicle129.present? and product129.present?
product130 = Refinery::Products::Product.create!(product_no:'BBT006', name:'Landcruiser 100 Series IFS Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcruiser 100 Series IFS Protector Bull Bar'.blank?
category130 = Refinery::Products::Category.find_by_name('Protector')
product130.categories << category130 if category130.present? and product130.present?
vehicle130 = Refinery::Products::Vehicle.find_by_name('100 Series')
product130.vehicles << vehicle130 if vehicle130.present? and product130.present?
product131 = Refinery::Products::Product.create!(product_no:'BBT025', name:'Landcruiser 200 Series 2008-2011 Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcruiser 200 Series 2008-2011 Protector Bull Bar'.blank?
category131 = Refinery::Products::Category.find_by_name('Protector')
product131.categories << category131 if category131.present? and product131.present?
vehicle131 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product131.vehicles << vehicle131 if vehicle131.present? and product131.present?
product132 = Refinery::Products::Product.create!(product_no:'BBT043', name:'Landcruiser 200 Series 2012+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Landcruiser 200 Series 2012+ Protector Bull Bar'.blank?
category132 = Refinery::Products::Category.find_by_name('Protector')
product132.categories << category132 if category132.present? and product132.present?
vehicle132 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product132.vehicles << vehicle132 if vehicle132.present? and product132.present?
product133 = Refinery::Products::Product.create!(product_no:'BBT044', name:'Colorado 7 RG 2012+ Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Colorado 7 RG 2012+ Protector Bull Bar'.blank?
category133 = Refinery::Products::Category.find_by_name('Protector')
product133.categories << category133 if category133.present? and product133.present?
vehicle133 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product133.vehicles << vehicle133 if vehicle133.present? and product133.present?
product134 = Refinery::Products::Product.create!(product_no:'BBT034', name:'Amarok Protector Bull Bar', description:'The Ironman 4x4 Protector Winch Bull Bar is an our top of the line bar. Featuring stainless steel loops, the bar is sure to turn a few heads and really add to your vehicles image. Featuring winch and airbag compatibility, integrated fog lights and aerial mount, this bar has everything to see you out to the tracks and around town.', notes:nil) if not 'Amarok Protector Bull Bar'.blank?
category134 = Refinery::Products::Category.find_by_name('Protector')
product134.categories << category134 if category134.present? and product134.present?
vehicle134 = Refinery::Products::Vehicle.find_by_name('2010+')
product134.vehicles << vehicle134 if vehicle134.present? and product134.present?
product135 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category135 = Refinery::Products::Category.find_by_name('')
product135.categories << category135 if category135.present? and product135.present?
vehicle135 = Refinery::Products::Vehicle.find_by_name('')
product135.vehicles << vehicle135 if vehicle135.present? and product135.present?
product136 = Refinery::Products::Product.create!(product_no:'WWB9500', name:'9500lbs Monster Winch', description:'The Ironman 4x4 Monster Winch has evolved! Totally redesigned and upgraded, Ironman Monster winches include stronger motors, heavy duty casings, synthetic ropes, competition style solenoid and are the only winch on the market with a motor breather.', notes:nil) if not '9500lbs Monster Winch '.blank?
category136 = Refinery::Products::Category.find_by_name('Electric Winches (12v)')
product136.categories << category136 if category136.present? and product136.present?
vehicle136 = Refinery::Products::Vehicle.find_by_name('')
product136.vehicles << vehicle136 if vehicle136.present? and product136.present?
product137 = Refinery::Products::Product.create!(product_no:'WWB9500SR', name:'9500lbs Monster Winch with Synthetic Rope', description:'The Ironman 4x4 Monster Winch has evolved! Totally redesigned and upgraded, Ironman Monster winches include stronger motors, heavy duty casings, synthetic ropes, competition style solenoid and are the only winch on the market with a motor breather.', notes:nil) if not '9500lbs Monster Winch with Synthetic Rope'.blank?
category137 = Refinery::Products::Category.find_by_name('Electric Winches (12v)')
product137.categories << category137 if category137.present? and product137.present?
vehicle137 = Refinery::Products::Vehicle.find_by_name('')
product137.vehicles << vehicle137 if vehicle137.present? and product137.present?
product138 = Refinery::Products::Product.create!(product_no:'WWB12000', name:'12,000lbs Monster Winch', description:'The Ironman 4x4 Monster Winch has evolved! Totally redesigned and upgraded, Ironman Monster winches include stronger motors, heavy duty casings, synthetic ropes, competition style solenoid and are the only winch on the market with a motor breather.', notes:nil) if not '12,000lbs Monster Winch '.blank?
category138 = Refinery::Products::Category.find_by_name('Electric Winches (12v)')
product138.categories << category138 if category138.present? and product138.present?
vehicle138 = Refinery::Products::Vehicle.find_by_name('')
product138.vehicles << vehicle138 if vehicle138.present? and product138.present?
product139 = Refinery::Products::Product.create!(product_no:'WWB12000SR', name:'12,000lbs Monster Winch with Synthetic Rope', description:'The Ironman 4x4 Monster Winch has evolved! Totally redesigned and upgraded, Ironman Monster winches include stronger motors, heavy duty casings, synthetic ropes, competition style solenoid and are the only winch on the market with a motor breather.', notes:nil) if not '12,000lbs Monster Winch with Synthetic Rope'.blank?
category139 = Refinery::Products::Category.find_by_name('Electric Winches (12v)')
product139.categories << category139 if category139.present? and product139.present?
vehicle139 = Refinery::Products::Vehicle.find_by_name('')
product139.vehicles << vehicle139 if vehicle139.present? and product139.present?
product140 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category140 = Refinery::Products::Category.find_by_name('')
product140.categories << category140 if category140.present? and product140.present?
vehicle140 = Refinery::Products::Vehicle.find_by_name('')
product140.vehicles << vehicle140 if vehicle140.present? and product140.present?
product141 = Refinery::Products::Product.create!(product_no:'IHANDWINCH001', name:'Hand Winch', description:'', notes:'1600kg, Incl Carrybag') if not 'Hand Winch'.blank?
category141 = Refinery::Products::Category.find_by_name('Hand Winch')
product141.categories << category141 if category141.present? and product141.present?
vehicle141 = Refinery::Products::Vehicle.find_by_name('')
product141.vehicles << vehicle141 if vehicle141.present? and product141.present?
product142 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category142 = Refinery::Products::Category.find_by_name('')
product142.categories << category142 if category142.present? and product142.present?
vehicle142 = Refinery::Products::Vehicle.find_by_name('')
product142.vehicles << vehicle142 if vehicle142.present? and product142.present?
product143 = Refinery::Products::Product.create!(product_no:'WINCHBLANKET', name:'Winch Damper Blanket', description:'An essential part of your safety equipment when using a winch.  This blanket is designed to be laid over a winch cable when under tension for any reason, in the event of breakage of the winch cable the blanket will work to dampen the recoil - and help to reduce the chance of serious injury to anyone in the vicinity. These blankets are supplied with any Ironman winch but can be purchased separately.', notes:nil) if not 'Winch Damper Blanket'.blank?
category143 = Refinery::Products::Category.find_by_name('Winch Accessories')
product143.categories << category143 if category143.present? and product143.present?
vehicle143 = Refinery::Products::Vehicle.find_by_name('')
product143.vehicles << vehicle143 if vehicle143.present? and product143.present?
product144 = Refinery::Products::Product.create!(product_no:'WWWROPE001', name:'Synthetic Winch Rope 9.5mm', description:'Rated to 8100kg. Highly versatile synthetic rope, suited to competition or recreational use. Includes Rope Protector and Stainless Thimble.', notes:'27 m - 8100 kg') if not 'Synthetic Winch Rope 9.5mm'.blank?
category144 = Refinery::Products::Category.find_by_name('Winch Accessories')
product144.categories << category144 if category144.present? and product144.present?
vehicle144 = Refinery::Products::Vehicle.find_by_name('')
product144.vehicles << vehicle144 if vehicle144.present? and product144.present?
product145 = Refinery::Products::Product.create!(product_no:'WWWROPE002', name:'Synthetic Winch Rope 11mm', description:'Rated to 11,700kg. Highly versatile synthetic rope, suited to competition or recreational use. Includes Rope Protector and Stainless Thimble.', notes:'30 m - 11700 kg') if not 'Synthetic Winch Rope 11mm'.blank?
category145 = Refinery::Products::Category.find_by_name('Winch Accessories')
product145.categories << category145 if category145.present? and product145.present?
vehicle145 = Refinery::Products::Vehicle.find_by_name('')
product145.vehicles << vehicle145 if vehicle145.present? and product145.present?
product146 = Refinery::Products::Product.create!(product_no:'WWWHAWSE', name:'Alloy Hawse Fairlead', description:'Designed to suit Ironman 4x4 synthetic rope, the Alloy hawse fairlead helps direct winch rope onto the winch from the bullbar whilst avoiding any sharp edge it might otherwise face.', notes:nil) if not 'Alloy Hawse Fairlead'.blank?
category146 = Refinery::Products::Category.find_by_name('Winch Accessories')
product146.categories << category146 if category146.present? and product146.present?
vehicle146 = Refinery::Products::Vehicle.find_by_name('')
product146.vehicles << vehicle146 if vehicle146.present? and product146.present?
product147 = Refinery::Products::Product.create!(product_no:'IBLOCK', name:'Snatch Block', description:'Ironman winch blocks allow you to increase the capacity your winch by utilising two parts of line instead of one. Also allows deflection of winch rope when winching around difficult angles.', notes:'8,000kg Rating') if not 'Snatch Block '.blank?
category147 = Refinery::Products::Category.find_by_name('Winch Accessories')
product147.categories << category147 if category147.present? and product147.present?
vehicle147 = Refinery::Products::Vehicle.find_by_name('')
product147.vehicles << vehicle147 if vehicle147.present? and product147.present?
product148 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category148 = Refinery::Products::Category.find_by_name('')
product148.categories << category148 if category148.present? and product148.present?
vehicle148 = Refinery::Products::Vehicle.find_by_name('')
product148.vehicles << vehicle148 if vehicle148.present? and product148.present?
product149 = Refinery::Products::Product.create!(product_no:'IRECKIT001', name:'Large Recovery Kit', description:'This kit is designed to cater for all recovery and winching needs. Comply\'s with Australian Standards and field tested for real-life recovery situations. Kit includes 9m 8000kg snatch strap, 20m 4500kg winch extension, 3m 12000kg tree trunk protector, drag chain, two 4.7 bow shackles, snatch block, leather gloves and carry bag.', notes:nil) if not 'Large Recovery Kit'.blank?
category149 = Refinery::Products::Category.find_by_name('Recovery Kits')
product149.categories << category149 if category149.present? and product149.present?
vehicle149 = Refinery::Products::Vehicle.find_by_name('')
product149.vehicles << vehicle149 if vehicle149.present? and product149.present?
product150 = Refinery::Products::Product.create!(product_no:'IRECKIT002', name:'Small Recovery Kit', description:'Don\'t get stuck! Complying with Australia Standards and field tested for real-life recovery situations. Kit includes 9m 8000kg snatch strap, two 4.7 bow shackles, recovery hitch, leather gloves and reinforced carry bag.', notes:nil) if not 'Small Recovery Kit'.blank?
category150 = Refinery::Products::Category.find_by_name('Recovery Kits')
product150.categories << category150 if category150.present? and product150.present?
vehicle150 = Refinery::Products::Vehicle.find_by_name('')
product150.vehicles << vehicle150 if vehicle150.present? and product150.present?
product151 = Refinery::Products::Product.create!(product_no:'ISNATCH003', name:'Snatch Strap 8,000kg', description:'Premium quality snatch straps are the most important recovery item for any 4WD owner.', notes:'9m x 75mm') if not 'Snatch Strap 8,000kg'.blank?
category151 = Refinery::Products::Category.find_by_name('Recovery Straps & Snatches')
product151.categories << category151 if category151.present? and product151.present?
vehicle151 = Refinery::Products::Vehicle.find_by_name('')
product151.vehicles << vehicle151 if vehicle151.present? and product151.present?
product152 = Refinery::Products::Product.create!(product_no:'ISNATCH004', name:'Snatch Strap 11,000kg', description:'Premium quality snatch straps are the most important recovery item for any 4WD owner.', notes:'9m x 100mm') if not 'Snatch Strap 11,000kg'.blank?
category152 = Refinery::Products::Category.find_by_name('Recovery Straps & Snatches')
product152.categories << category152 if category152.present? and product152.present?
vehicle152 = Refinery::Products::Vehicle.find_by_name('')
product152.vehicles << vehicle152 if vehicle152.present? and product152.present?
product153 = Refinery::Products::Product.create!(product_no:'IWINCHEXT', name:'Winch Extension Strap 4,500kg', description:'Ironman winch extension straps allow you to extend the reach of your winch should the wire cable not be long enough.', notes:'20m x 50mm') if not 'Winch Extension Strap 4,500kg'.blank?
category153 = Refinery::Products::Category.find_by_name('Recovery Straps & Snatches')
product153.categories << category153 if category153.present? and product153.present?
vehicle153 = Refinery::Products::Vehicle.find_by_name('')
product153.vehicles << vehicle153 if vehicle153.present? and product153.present?
product154 = Refinery::Products::Product.create!(product_no:'ITREE', name:'Tree Trunk Protector 12,000kg', description:'Tree trunk protectors are designed to protect the tree used as an anchor point for your recovery. If you use anything other than a tree trunk protector you risk damaging both the tree and your winching line - not to mention the tree!', notes:'3m x 75mm') if not 'Tree Trunk Protector 12,000kg'.blank?
category154 = Refinery::Products::Category.find_by_name('Recovery Straps & Snatches')
product154.categories << category154 if category154.present? and product154.present?
vehicle154 = Refinery::Products::Vehicle.find_by_name('')
product154.vehicles << vehicle154 if vehicle154.present? and product154.present?
product155 = Refinery::Products::Product.create!(product_no:'IDRAG', name:'Heavy Duty Drag Chain 5m x 8mm', description:'The Ironman drag chain is designed as an additional recovery item to remove fallen trees and logs off 4WD tracks. Chain includes carry bag.', notes:nil) if not 'Heavy Duty Drag Chain 5m x 8mm'.blank?
category155 = Refinery::Products::Category.find_by_name('Recovery Straps & Snatches')
product155.categories << category155 if category155.present? and product155.present?
vehicle155 = Refinery::Products::Vehicle.find_by_name('')
product155.vehicles << vehicle155 if vehicle155.present? and product155.present?
product156 = Refinery::Products::Product.create!(product_no:'IHOOKBOW', name:'Recovery Hitch', description:'Ironman recovery bow shackle fits neatly into your tow bar to provide an easily accessible recovery point.', notes:'With Bow Shackle 4.75T') if not 'Recovery Hitch'.blank?
category156 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product156.categories << category156 if category156.present? and product156.present?
vehicle156 = Refinery::Products::Vehicle.find_by_name('')
product156.vehicles << vehicle156 if vehicle156.present? and product156.present?
product157 = Refinery::Products::Product.create!(product_no:'IBOW', name:'Bow Shackle 4.75T', description:'Shackles are an essential recovery item you can never have too many of! Used to attach recovery straps, tree trunk protectors, winch extension straps & snatch blocks.', notes:nil) if not 'Bow Shackle 4.75T'.blank?
category157 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product157.categories << category157 if category157.present? and product157.present?
vehicle157 = Refinery::Products::Vehicle.find_by_name('')
product157.vehicles << vehicle157 if vehicle157.present? and product157.present?
product158 = Refinery::Products::Product.create!(product_no:'ITOW', name:'Universal Recovery Hook', description:'Ironman universal tow hooks provide an additional recovery point for your 4WD.', notes:'4,500kg Rating') if not 'Universal Recovery Hook '.blank?
category158 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product158.categories << category158 if category158.present? and product158.present?
vehicle158 = Refinery::Products::Vehicle.find_by_name('')
product158.vehicles << vehicle158 if vehicle158.present? and product158.present?
product159 = Refinery::Products::Product.create!(product_no:'IBAG', name:'Small Recovery Bag', description:'Perfect if you already have some accumulated recovery gear, the small recovery bag gives you a handy bag to neatly and cleanly pack away your recovery gear for storage in your vehicle.', notes:nil) if not 'Small Recovery Bag'.blank?
category159 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product159.categories << category159 if category159.present? and product159.present?
vehicle159 = Refinery::Products::Vehicle.find_by_name('')
product159.vehicles << vehicle159 if vehicle159.present? and product159.present?
product160 = Refinery::Products::Product.create!(product_no:'IGLOVES', name:'Leather Recovery Gloves', description:'If your vehicle is fitted with a winch this is one of the most important (and often forgotten) accessories you can pack.  Gloves are essential when handling winch cables or any other recovery equipment to save yourself from possible injuries. Of course, these have a more general use when working on your vehicle on the side of the track, keeping your hands warm, dry and relatively clean.', notes:nil) if not 'Leather Recovery Gloves'.blank?
category160 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product160.categories << category160 if category160.present? and product160.present?
vehicle160 = Refinery::Products::Vehicle.find_by_name('')
product160.vehicles << vehicle160 if vehicle160.present? and product160.present?
product161 = Refinery::Products::Product.create!(product_no:'ICOMPRESSOR001', name:'Flo-Max Air Compressor 72L / min, 12v', description:'Ironman 12 Volt heavy duty compressor is ideal for the value conscious 4wder. Feature a big 3 year warranty, maximum 150 psi pressure pumping out up to 72 litres per minute.', notes:nil) if not 'Flo-Max Air Compressor  72L  / min, 12v'.blank?
category161 = Refinery::Products::Category.find_by_name('Air Compressors')
product161.categories << category161 if category161.present? and product161.present?
vehicle161 = Refinery::Products::Vehicle.find_by_name('')
product161.vehicles << vehicle161 if vehicle161.present? and product161.present?
product162 = Refinery::Products::Product.create!(product_no:'ICOMPRESSOR002', name:'Flo-Max Pro Air Compressor 160L / min, 12v', description:'New from Ironman. The Flomax Pro pumps out an amazing 160 litres per minute, 3 year warranty, 8m heat resistant hose, inline pressure guage and deflator, built in air cleaner, cast alloy cylinder housing, pressure relief valve and heavy duty carry bag.', notes:nil) if not 'Flo-Max Pro Air Compressor  160L  / min, 12v'.blank?
category162 = Refinery::Products::Category.find_by_name('Air Compressors')
product162.categories << category162 if category162.present? and product162.present?
vehicle162 = Refinery::Products::Vehicle.find_by_name('')
product162.vehicles << vehicle162 if vehicle162.present? and product162.present?
product163 = Refinery::Products::Product.create!(product_no:'ISPEEDY', name:'Speedy Tyre Deflator', description:'The Ironman "Speedy" deflator screws onto your 4WD\'s tyre valve, allowing you to remove it\'s valve-core for rapid air-down of even the biggest tyres.', notes:nil) if not 'Speedy Tyre Deflator'.blank?
category163 = Refinery::Products::Category.find_by_name('Tyre Accessories & Tools')
product163.categories << category163 if category163.present? and product163.present?
vehicle163 = Refinery::Products::Vehicle.find_by_name('')
product163.vehicles << vehicle163 if vehicle163.present? and product163.present?
product164 = Refinery::Products::Product.create!(product_no:'ITYRE001', name:'Tyre Repair Kit', description:'Ironman tyre repair kit includes 30 repair cords, tools carry case and digital tyre gauge. Don\'t leave home without it!', notes:nil) if not 'Tyre Repair Kit'.blank?
category164 = Refinery::Products::Category.find_by_name('Tyre Accessories & Tools')
product164.categories << category164 if category164.present? and product164.present?
vehicle164 = Refinery::Products::Vehicle.find_by_name('')
product164.vehicles << vehicle164 if vehicle164.present? and product164.present?
product165 = Refinery::Products::Product.create!(product_no:'ITYRE002', name:'Tyre Repair Cord (Refill 25pc)', description:'To suit the Ironman tyre repair kit.Includes 25 repair cords to restock the tyre repair kit.', notes:nil) if not 'Tyre Repair Cord (Refill 25pc)'.blank?
category165 = Refinery::Products::Category.find_by_name('Tyre Accessories & Tools')
product165.categories << category165 if category165.present? and product165.present?
vehicle165 = Refinery::Products::Vehicle.find_by_name('')
product165.vehicles << vehicle165 if vehicle165.present? and product165.present?
product166 = Refinery::Products::Product.create!(product_no:'ITYRE003', name:'Tyre Pressure Gauge', description:'Tyre Pressure Gauge, ideal for checking tyre pressures after inflating or deflating tyres.  Double sided head enables easy acces to valve stem for a quick & reliable reading.  Made from quality materials ensures durability.  Make sure you have one in your vehicle at all times.', notes:nil) if not 'Tyre Pressure Gauge'.blank?
category166 = Refinery::Products::Category.find_by_name('Tyre Accessories & Tools')
product166.categories << category166 if category166.present? and product166.present?
vehicle166 = Refinery::Products::Vehicle.find_by_name('')
product166.vehicles << vehicle166 if vehicle166.present? and product166.present?
product167 = Refinery::Products::Product.create!(product_no:'IHIGHLIFT001', name:'High Lift Jack 48” Incl Cover', description:'Ironman Highlift hack complies with Australian safety standards. Simply to use, easy to clean and highly efficient. 1050kg lift capacity with 97cm of continuous lift and a free carry bag.', notes:nil) if not 'High Lift Jack 48” Incl Cover  '.blank?
category167 = Refinery::Products::Category.find_by_name('High Lift Jacks')
product167.categories << category167 if category167.present? and product167.present?
vehicle167 = Refinery::Products::Vehicle.find_by_name('')
product167.vehicles << vehicle167 if vehicle167.present? and product167.present?
product168 = Refinery::Products::Product.create!(product_no:'IHIGHLIFT002', name:'High Lift Jack 60” Incl Cover', description:'Ironman Highlift hack complies with Australian safety standards. Simply to use, easy to clean and highly efficient. 1050kg lift capacity with 97cm of continuous lift and a free carry bag.', notes:nil) if not 'High Lift Jack 60” Incl Cover  '.blank?
category168 = Refinery::Products::Category.find_by_name('High Lift Jacks')
product168.categories << category168 if category168.present? and product168.present?
vehicle168 = Refinery::Products::Vehicle.find_by_name('')
product168.vehicles << vehicle168 if vehicle168.present? and product168.present?
product169 = Refinery::Products::Product.create!(product_no:'IHIGHLIFT003', name:'Bumper Lift Kit', description:'Designed to be used in conjunction with a High Lift Jack this convenient bracket allows for easy lifting of 4 Wheel Drive bumpers.', notes:nil) if not 'Bumper Lift Kit'.blank?
category169 = Refinery::Products::Category.find_by_name('High Lift Jacks')
product169.categories << category169 if category169.present? and product169.present?
vehicle169 = Refinery::Products::Vehicle.find_by_name('')
product169.vehicles << vehicle169 if vehicle169.present? and product169.present?
product170 = Refinery::Products::Product.create!(product_no:'IHIGHLIFT004', name:'Tyre Lift Kit', description:'Designed to be used in conjunction with a High Lift Jack this convenient hook allows for easy lifting of large 4 Wheel Drive tyres.', notes:nil) if not 'Tyre Lift Kit'.blank?
category170 = Refinery::Products::Category.find_by_name('High Lift Jacks')
product170.categories << category170 if category170.present? and product170.present?
vehicle170 = Refinery::Products::Vehicle.find_by_name('')
product170.vehicles << vehicle170 if vehicle170.present? and product170.present?
product171 = Refinery::Products::Product.create!(product_no:'IEXJACK001', name:'Exhaust Maxi Jack', description:'Simple to use this essential recovery equipment is great for use in mud, snow and sand. 4.2T lifting capacity providing a 750mm maximum lift height. Includes 5 heavy duty spikes for increased stability, 6m long inflation hose, leather gloves and handy carry bag.', notes:'4.2T, Incl Carrybag') if not 'Exhaust Maxi Jack '.blank?
category171 = Refinery::Products::Category.find_by_name('Exhaust Jack')
product171.categories << category171 if category171.present? and product171.present?
vehicle171 = Refinery::Products::Vehicle.find_by_name('')
product171.vehicles << vehicle171 if vehicle171.present? and product171.present?
product172 = Refinery::Products::Product.create!(product_no:'ITREDS1100', name:'Total Traction by Treds', description:'The ultimate traction aide has arrived at Ironman 4x4. Engineered and manufactured in Australia from the highest quality materials, Total Traction by Treds is the ultimate recovery traction aide. Designed to improve traction in sand, mud and snow, Total Traction is the perfect tool for getting you moving again. Designed with superior grip through hex nodules and aggressive ramp entry teeth to ensure you get grip from the very beginning. The four channel underside ensure maximum structural integrity and the underside pattern ensures stability on the ground. Whilst user friendly features such as an integrated shovel and ergonomic handles provide comfort and control.', notes:'1100mm Ironman') if not 'Total Traction by Treds'.blank?
category172 = Refinery::Products::Category.find_by_name('Recovery Devices & Equipment')
product172.categories << category172 if category172.present? and product172.present?
vehicle172 = Refinery::Products::Vehicle.find_by_name('')
product172.vehicles << vehicle172 if vehicle172.present? and product172.present?
product173 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category173 = Refinery::Products::Category.find_by_name('')
product173.categories << category173 if category173.present? and product173.present?
vehicle173 = Refinery::Products::Vehicle.find_by_name('')
product173.vehicles << vehicle173 if vehicle173.present? and product173.present?
product174 = Refinery::Products::Product.create!(product_no:'IFIRSTAID001', name:'First Aid Kit', description:'A first aid kit should be standard equipment on any 4WD. Slide it under your seat in case of an emergency. Hopefully you\'ll never need it, chances are you will!', notes:'(32pc)') if not 'First Aid Kit '.blank?
category174 = Refinery::Products::Category.find_by_name('Equipment')
product174.categories << category174 if category174.present? and product174.present?
vehicle174 = Refinery::Products::Vehicle.find_by_name('')
product174.vehicles << vehicle174 if vehicle174.present? and product174.present?
product175 = Refinery::Products::Product.create!(product_no:'IRUGGED001', name:'Rugged Rescue Survival Kit', description:'This hot new product from Ironman provides maximum strength and functionality. Kit includes, tree saw, shovel, pick axe, 1/2" socket drive, mallet, tyre lever, axe and flatpack funnel.', notes:nil) if not 'Rugged Rescue Survival Kit'.blank?
category175 = Refinery::Products::Category.find_by_name('Equipment')
product175.categories << category175 if category175.present? and product175.present?
vehicle175 = Refinery::Products::Vehicle.find_by_name('')
product175.vehicles << vehicle175 if vehicle175.present? and product175.present?
product176 = Refinery::Products::Product.create!(product_no:'ISEATCOVER', name:'Universal Waterproof Slip-On Seat Cover', description:'It is easy to get dirty whilst out on the track, so protect your seats with these easy to slip on, universal seat covers. Made of durable fabric designed to give maximum protection of your upholstery ', notes:nil) if not 'Universal Waterproof Slip-On Seat Cover'.blank?
category176 = Refinery::Products::Category.find_by_name('Equipment')
product176.categories << category176 if category176.present? and product176.present?
vehicle176 = Refinery::Products::Vehicle.find_by_name('')
product176.vehicles << vehicle176 if vehicle176.present? and product176.present?
product177 = Refinery::Products::Product.create!(product_no:'IRWB001', name:'Rear Wheel Bag', description:'Designed with versatility and maximum storage capacity in mind, the Ironman 4x4 Multi-purpose Rear Wheel Bag is the perfect accessory for any tourer or 4WDer wanting that extra storage carrying ability for rubbish, wet clothing, recovery gear, etc. The weather-proof velcro sealed zip flap protects the beg contents from the elements. The vented side pockets are ideal for, and help dry wet or muddy recovery straps, recovery accessories, tools, etc - and have inbuilt drain holes. The Ironman 4x4 Rear Wheel Bag has a huge 55L storage capacity, and is strong enough to withstand the rigors of 4WDing.', notes:nil) if not 'Rear Wheel Bag'.blank?
category177 = Refinery::Products::Category.find_by_name('Equipment')
product177.categories << category177 if category177.present? and product177.present?
vehicle177 = Refinery::Products::Vehicle.find_by_name('')
product177.vehicles << vehicle177 if vehicle177.present? and product177.present?
product178 = Refinery::Products::Product.create!(product_no:'IJERRYCAN001', name:'Jerry Can', description:'Ironman 4x4 20L jerry cans are tested to comply with the Australian standards and feature a slide lock to stop anyone from helping themself to your fuel. The Jerry cans are steel pressed and have the Ironman “I” stamped into the side and marked withthe 20L level point.', notes:nil) if not 'Jerry Can'.blank?
category178 = Refinery::Products::Category.find_by_name('Equipment')
product178.categories << category178 if category178.present? and product178.present?
vehicle178 = Refinery::Products::Vehicle.find_by_name('')
product178.vehicles << vehicle178 if vehicle178.present? and product178.present?
product179 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category179 = Refinery::Products::Category.find_by_name('')
product179.categories << category179 if category179.present? and product179.present?
vehicle179 = Refinery::Products::Vehicle.find_by_name('')
product179.vehicles << vehicle179 if vehicle179.present? and product179.present?
product180 = Refinery::Products::Product.create!(product_no:'IFRIDGE30SP', name:'IceCube Fridge 30L', description:'The Ironman range of fridges, keeps your food fresh and your drinks ice-cold. Available in 30L, 40L or 50L the Ice Cube Fridge/Freezer uses the latest Danfoss BD-35F Compressor. Made with high quality CFC-free Polyurethane Foam Insulation, it is durable enough to endure the harshest of conditions and temperatures whilst staying cool. The fridge is robust in construction and designed to offer maximum capacity for its size. This 30 litre model will hold 42, 375ml cans.', notes:nil) if not 'IceCube Fridge 30L'.blank?
category180 = Refinery::Products::Category.find_by_name('Fridges')
product180.categories << category180 if category180.present? and product180.present?
vehicle180 = Refinery::Products::Vehicle.find_by_name('')
product180.vehicles << vehicle180 if vehicle180.present? and product180.present?
product181 = Refinery::Products::Product.create!(product_no:'IFRIDGE40SP', name:'IceCube Fridge 40L', description:'The Ironman range of fridges, keeps your food fresh and your drinks ice-cold. Available in 30L, 40L or 50L the Ice Cube Fridge/Freezer uses the latest Danfoss BD-35F Compressor. Made with high quality CFC-free Polyurethane Foam Insulation, it is durable enough to endure the harshest of conditions and temperatures whilst staying cool. The fridge is robust in construction and designed t offer maximum capacity for its size. This 40 litre model will hold 62, 375ml cans.', notes:nil) if not 'IceCube Fridge 40L'.blank?
category181 = Refinery::Products::Category.find_by_name('Fridges')
product181.categories << category181 if category181.present? and product181.present?
vehicle181 = Refinery::Products::Vehicle.find_by_name('')
product181.vehicles << vehicle181 if vehicle181.present? and product181.present?
product182 = Refinery::Products::Product.create!(product_no:'IFRIDGE50SP', name:'IceCube Fridge 50L', description:'The Ironman range of fridges, keeps your food fresh and your drinks ice-cold. Available in 30L, 40L or 50L the Ice Cube Fridge/Freezer uses the latest Danfoss BD-35F Compressor. Made with high quality CFC-free Polyurethane Foam Insulation, it is durable enough to endure the harshest of conditions and temperatures whilst staying cool. The fridge is robust in construction and designed t offer maximum capacity for its size. This 50 litre model will hold 72, 375ml cans.', notes:nil) if not 'IceCube Fridge 50L'.blank?
category182 = Refinery::Products::Category.find_by_name('Fridges')
product182.categories << category182 if category182.present? and product182.present?
vehicle182 = Refinery::Products::Vehicle.find_by_name('')
product182.vehicles << vehicle182 if vehicle182.present? and product182.present?
product183 = Refinery::Products::Product.create!(product_no:'IFRIDGE65SP', name:'IceCube Fridge 65L', description:'The giant size of the Ironman chest fridge/freezers are ideal for those wanting maximum storage capacity. Whether your a fisherman, outback tourer or heavy drinker, these 65L & 74L fridges are ideal. The 65L chest has two separate bins which give you the option of running a dual fridge, dual freezer or split fridge & freezer.', notes:nil) if not 'IceCube Fridge 65L'.blank?
category183 = Refinery::Products::Category.find_by_name('Fridges')
product183.categories << category183 if category183.present? and product183.present?
vehicle183 = Refinery::Products::Vehicle.find_by_name('')
product183.vehicles << vehicle183 if vehicle183.present? and product183.present?
product184 = Refinery::Products::Product.create!(product_no:'IFRIDGE74SP', name:'IceCube Fridge 74L', description:'The giant size of the Ironman chest fridge/freezers are ideal for those wanting maximum storage capacity. Whether your a fisherman, outback tourer or heavy drinker, these 65L & 74L fridges are ideal. The 74L chest is a single bin storage with larger capacity for extra food, long distance trips, or for those traveling with the whole family.', notes:nil) if not 'IceCube Fridge 74L'.blank?
category184 = Refinery::Products::Category.find_by_name('Fridges')
product184.categories << category184 if category184.present? and product184.present?
vehicle184 = Refinery::Products::Vehicle.find_by_name('')
product184.vehicles << vehicle184 if vehicle184.present? and product184.present?
product185 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category185 = Refinery::Products::Category.find_by_name('')
product185.categories << category185 if category185.present? and product185.present?
vehicle185 = Refinery::Products::Vehicle.find_by_name('')
product185.vehicles << vehicle185 if vehicle185.present? and product185.present?
product186 = Refinery::Products::Product.create!(product_no:'IFRIDGE30 BAG', name:'IceCube Fridge 30L Insulated Bag', description:'Ironman 4x4 insulated bags protects your fridge from bumps and scratches. It increases the \'cold hold down\' time overnight.', notes:nil) if not 'IceCube Fridge 30L Insulated Bag'.blank?
category186 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product186.categories << category186 if category186.present? and product186.present?
vehicle186 = Refinery::Products::Vehicle.find_by_name('')
product186.vehicles << vehicle186 if vehicle186.present? and product186.present?
product187 = Refinery::Products::Product.create!(product_no:'IFRIDGE40 BAG', name:'IceCube Fridge 40L Insulated Bag', description:'Ironman 4x4 insulated bags protects your fridge from bumps and scratches. It increases the \'cold hold down\' time overnight.', notes:nil) if not 'IceCube Fridge 40L Insulated Bag'.blank?
category187 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product187.categories << category187 if category187.present? and product187.present?
vehicle187 = Refinery::Products::Vehicle.find_by_name('')
product187.vehicles << vehicle187 if vehicle187.present? and product187.present?
product188 = Refinery::Products::Product.create!(product_no:'IFRIDGE50 BAG', name:'IceCube Fridge 50L Insulated Bag', description:'Ironman 4x4 insulated bags protects your fridge from bumps and scratches. It increases the \'cold hold down\' time overnight.', notes:nil) if not 'IceCube Fridge 50L Insulated Bag'.blank?
category188 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product188.categories << category188 if category188.present? and product188.present?
vehicle188 = Refinery::Products::Vehicle.find_by_name('')
product188.vehicles << vehicle188 if vehicle188.present? and product188.present?
product189 = Refinery::Products::Product.create!(product_no:'IFRIDGE65 BAG', name:'IceCube Fridge 65L Insulated Bag', description:'Ironman 4x4 insulated bags protects your fridge from bumps and scratches. It increases the \'cold hold down\' time overnight.', notes:nil) if not 'IceCube Fridge 65L Insulated Bag'.blank?
category189 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product189.categories << category189 if category189.present? and product189.present?
vehicle189 = Refinery::Products::Vehicle.find_by_name('')
product189.vehicles << vehicle189 if vehicle189.present? and product189.present?
product190 = Refinery::Products::Product.create!(product_no:'IFRIDGE74 BAG', name:'IceCube Fridge 74L Insulated Bag', description:'Ironman 4x4 insulated bags protects your fridge from bumps and scratches. It increases the \'cold hold down\' time overnight.', notes:nil) if not 'IceCube Fridge 74L Insulated Bag'.blank?
category190 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product190.categories << category190 if category190.present? and product190.present?
vehicle190 = Refinery::Products::Vehicle.find_by_name('')
product190.vehicles << vehicle190 if vehicle190.present? and product190.present?
product191 = Refinery::Products::Product.create!(product_no:'IFRIDGESLIDE', name:'Fridge Slide', description:'Ironman 4x4 fridge slides offer convenient & safe storage & easy access to your fridge. Supplied in a flatpack format with full installation instructions included this slide. The fridge slides are of high quality with a lock in and lock out mechanism and are rated at a 100kg of evenly distributed weight. Ironman 4x4 fridge slides suit Ironman 4x4 30-50L fridges.', notes:nil) if not 'Fridge Slide'.blank?
category191 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product191.categories << category191 if category191.present? and product191.present?
vehicle191 = Refinery::Products::Vehicle.find_by_name('')
product191.vehicles << vehicle191 if vehicle191.present? and product191.present?
product192 = Refinery::Products::Product.create!(product_no:'IFRIDGESTRAP', name:'Fridge Straps', description:'Ideal of securing of your Fridge for all on or off-road travel.  Ironman 4x4 Fridge Straps are of a robust construction, and suitable for all of the Ironman fridge range, these are an inexpensive way of protecting one of your most valuable camping accessories .  ', notes:nil) if not 'Fridge Straps '.blank?
category192 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product192.categories << category192 if category192.present? and product192.present?
vehicle192 = Refinery::Products::Vehicle.find_by_name('')
product192.vehicles << vehicle192 if vehicle192.present? and product192.present?
product193 = Refinery::Products::Product.create!(product_no:'ITHERMOMETER001', name:'Fridge Wireless Thermometer', description:'Battery operated wireless thermometer designed  for monitoring the temperature in any fridge/freezer. Sensor is fitted in fridge (supplied with a mounting bracket) and handheld display shows internal fridge tmeperature and ambient temperature from up to 25m away.  This display will also show minimum and maximum temperatures and has a digital clock. Temperature range measured in fridge is -29.9 to 69.9 degrees Celsius, ambient temperature range is 0 to 60 degrees Celsius. ', notes:nil) if not 'Fridge Wireless Thermometer'.blank?
category193 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product193.categories << category193 if category193.present? and product193.present?
vehicle193 = Refinery::Products::Vehicle.find_by_name('')
product193.vehicles << vehicle193 if vehicle193.present? and product193.present?
product194 = Refinery::Products::Product.create!(product_no:'IFRIDGESTAND001', name:'Fridge Stand', description:'The Ironman 4x4 fridge stand offers a conventient camping accessory for positioning your fridge or esky/cooler for easy access wihtout bending.  Constructed from heavy duty aluminium and suitable for all Ironman 4x4 fridges and most eskies/coolers.', notes:nil) if not 'Fridge Stand'.blank?
category194 = Refinery::Products::Category.find_by_name('Fridge Accessories')
product194.categories << category194 if category194.present? and product194.present?
vehicle194 = Refinery::Products::Vehicle.find_by_name('')
product194.vehicles << vehicle194 if vehicle194.present? and product194.present?
product195 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category195 = Refinery::Products::Category.find_by_name('')
product195.categories << category195 if category195.present? and product195.present?
vehicle195 = Refinery::Products::Vehicle.find_by_name('')
product195.vehicles << vehicle195 if vehicle195.present? and product195.present?
product196 = Refinery::Products::Product.create!(product_no:'IDRAW700', name:'FJ Cruiser Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'FJ Cruiser Drawers'.blank?
category196 = Refinery::Products::Category.find_by_name('Drawers')
product196.categories << category196 if category196.present? and product196.present?
vehicle196 = Refinery::Products::Vehicle.find_by_name('2006+')
product196.vehicles << vehicle196 if vehicle196.present? and product196.present?
product197 = Refinery::Products::Product.create!(product_no:'IDRAW700', name:'JK Wrangler Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:'Only suits 4 Door model') if not 'JK Wrangler Drawers'.blank?
category197 = Refinery::Products::Category.find_by_name('Drawers')
product197.categories << category197 if category197.present? and product197.present?
vehicle197 = Refinery::Products::Vehicle.find_by_name('JK Wrangler')
product197.vehicles << vehicle197 if vehicle197.present? and product197.present?
product198 = Refinery::Products::Product.create!(product_no:'IDRAW700', name:'H3 Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'H3 Drawers'.blank?
category198 = Refinery::Products::Category.find_by_name('Drawers')
product198.categories << category198 if category198.present? and product198.present?
vehicle198 = Refinery::Products::Vehicle.find_by_name('H3')
product198.vehicles << vehicle198 if vehicle198.present? and product198.present?
product199 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category199 = Refinery::Products::Category.find_by_name('')
product199.categories << category199 if category199.present? and product199.present?
vehicle199 = Refinery::Products::Vehicle.find_by_name('')
product199.vehicles << vehicle199 if vehicle199.present? and product199.present?
product200 = Refinery::Products::Product.create!(product_no:'IDRAW800', name:'Pajero NM-NP Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Pajero NM-NP Drawers'.blank?
category200 = Refinery::Products::Category.find_by_name('Drawers')
product200.categories << category200 if category200.present? and product200.present?
vehicle200 = Refinery::Products::Vehicle.find_by_name('NM-NP 2000-2006')
product200.vehicles << vehicle200 if vehicle200.present? and product200.present?
product201 = Refinery::Products::Product.create!(product_no:'IDRAW800', name:'Pajero NS Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Pajero NS Drawers'.blank?
category201 = Refinery::Products::Category.find_by_name('Drawers')
product201.categories << category201 if category201.present? and product201.present?
vehicle201 = Refinery::Products::Vehicle.find_by_name('NS 2006-2009')
product201.vehicles << vehicle201 if vehicle201.present? and product201.present?
product202 = Refinery::Products::Product.create!(product_no:'IDRAW800', name:'Pajero NT Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Pajero NT Drawers'.blank?
category202 = Refinery::Products::Category.find_by_name('Drawers')
product202.categories << category202 if category202.present? and product202.present?
vehicle202 = Refinery::Products::Vehicle.find_by_name('NT 2009-2011')
product202.vehicles << vehicle202 if vehicle202.present? and product202.present?
product203 = Refinery::Products::Product.create!(product_no:'IDRAW800', name:'Discovery Series 2 Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Discovery Series 2 Drawers'.blank?
category203 = Refinery::Products::Category.find_by_name('Drawers')
product203.categories << category203 if category203.present? and product203.present?
vehicle203 = Refinery::Products::Vehicle.find_by_name('Series 2')
product203.vehicles << vehicle203 if vehicle203.present? and product203.present?
product204 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category204 = Refinery::Products::Category.find_by_name('')
product204.categories << category204 if category204.present? and product204.present?
vehicle204 = Refinery::Products::Vehicle.find_by_name('')
product204.vehicles << vehicle204 if vehicle204.present? and product204.present?
product205 = Refinery::Products::Product.create!(product_no:'IDRAW900', name:'Prado 95 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Prado 95 Series Drawers'.blank?
category205 = Refinery::Products::Category.find_by_name('Drawers')
product205.categories << category205 if category205.present? and product205.present?
vehicle205 = Refinery::Products::Vehicle.find_by_name('90 Series')
product205.vehicles << vehicle205 if vehicle205.present? and product205.present?
product206 = Refinery::Products::Product.create!(product_no:'IDRAW900', name:'Prado 120 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Prado 120 Series Drawers'.blank?
category206 = Refinery::Products::Category.find_by_name('Drawers')
product206.categories << category206 if category206.present? and product206.present?
vehicle206 = Refinery::Products::Vehicle.find_by_name('120 Series')
product206.vehicles << vehicle206 if vehicle206.present? and product206.present?
product207 = Refinery::Products::Product.create!(product_no:'IDRAW900', name:'Prado 150 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Prado 150 Series Drawers'.blank?
category207 = Refinery::Products::Category.find_by_name('Drawers')
product207.categories << category207 if category207.present? and product207.present?
vehicle207 = Refinery::Products::Vehicle.find_by_name('150 Series')
product207.vehicles << vehicle207 if vehicle207.present? and product207.present?
product208 = Refinery::Products::Product.create!(product_no:'IDRAW900', name:'76 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not '76 Series Drawers'.blank?
category208 = Refinery::Products::Category.find_by_name('Drawers')
product208.categories << category208 if category208.present? and product208.present?
vehicle208 = Refinery::Products::Vehicle.find_by_name('76 Series')
product208.vehicles << vehicle208 if vehicle208.present? and product208.present?
product209 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category209 = Refinery::Products::Category.find_by_name('')
product209.categories << category209 if category209.present? and product209.present?
vehicle209 = Refinery::Products::Vehicle.find_by_name('')
product209.vehicles << vehicle209 if vehicle209.present? and product209.present?
product210 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Patol GQ Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Patol GQ Drawers'.blank?
category210 = Refinery::Products::Category.find_by_name('Drawers')
product210.categories << category210 if category210.present? and product210.present?
vehicle210 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product210.vehicles << vehicle210 if vehicle210.present? and product210.present?
product211 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Patrol GU S1-3 Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Patrol GU S1-3 Drawers'.blank?
category211 = Refinery::Products::Category.find_by_name('Drawers')
product211.categories << category211 if category211.present? and product211.present?
vehicle211 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product211.vehicles << vehicle211 if vehicle211.present? and product211.present?
product212 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Patrol GU S4+ Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Patrol GU S4+ Drawers'.blank?
category212 = Refinery::Products::Category.find_by_name('Drawers')
product212.categories << category212 if category212.present? and product212.present?
vehicle212 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product212.vehicles << vehicle212 if vehicle212.present? and product212.present?
product213 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Landcruiser 60 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Landcruiser 60 Series Drawers'.blank?
category213 = Refinery::Products::Category.find_by_name('Drawers')
product213.categories << category213 if category213.present? and product213.present?
vehicle213 = Refinery::Products::Vehicle.find_by_name('60 Series')
product213.vehicles << vehicle213 if vehicle213.present? and product213.present?
product214 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Landcruiser 80 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Landcruiser 80 Series Drawers'.blank?
category214 = Refinery::Products::Category.find_by_name('Drawers')
product214.categories << category214 if category214.present? and product214.present?
vehicle214 = Refinery::Products::Vehicle.find_by_name('80 Series')
product214.vehicles << vehicle214 if vehicle214.present? and product214.present?
product215 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Landcruiser 100 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Landcruiser 100 Series Drawers'.blank?
category215 = Refinery::Products::Category.find_by_name('Drawers')
product215.categories << category215 if category215.present? and product215.present?
vehicle215 = Refinery::Products::Vehicle.find_by_name('100 Series')
product215.vehicles << vehicle215 if vehicle215.present? and product215.present?
product216 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Landcruiser 200 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Landcruiser 200 Series Drawers'.blank?
category216 = Refinery::Products::Category.find_by_name('Drawers')
product216.categories << category216 if category216.present? and product216.present?
vehicle216 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product216.vehicles << vehicle216 if vehicle216.present? and product216.present?
product217 = Refinery::Products::Product.create!(product_no:'IDRAW1000', name:'Landcruiser 200 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Landcruiser 200 Series Drawers'.blank?
category217 = Refinery::Products::Category.find_by_name('Drawers')
product217.categories << category217 if category217.present? and product217.present?
vehicle217 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product217.vehicles << vehicle217 if vehicle217.present? and product217.present?
product218 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category218 = Refinery::Products::Category.find_by_name('')
product218.categories << category218 if category218.present? and product218.present?
vehicle218 = Refinery::Products::Vehicle.find_by_name('')
product218.vehicles << vehicle218 if vehicle218.present? and product218.present?
product219 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Lancruiser 78 Series Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:'Troop Carrier') if not 'Lancruiser 78 Series Drawers'.blank?
category219 = Refinery::Products::Category.find_by_name('Drawers')
product219.categories << category219 if category219.present? and product219.present?
vehicle219 = Refinery::Products::Vehicle.find_by_name('78 Series')
product219.vehicles << vehicle219 if vehicle219.present? and product219.present?
product220 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Hilux Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:'SR & SR5') if not 'Hilux Drawers'.blank?
category220 = Refinery::Products::Category.find_by_name('Drawers')
product220.categories << category220 if category220.present? and product220.present?
vehicle220 = Refinery::Products::Vehicle.find_by_name('2005+')
product220.vehicles << vehicle220 if vehicle220.present? and product220.present?
product221 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Navara D22 Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Navara D22 Drawers'.blank?
category221 = Refinery::Products::Category.find_by_name('Drawers')
product221.categories << category221 if category221.present? and product221.present?
vehicle221 = Refinery::Products::Vehicle.find_by_name('D22')
product221.vehicles << vehicle221 if vehicle221.present? and product221.present?
product222 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Navara D40 Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Navara D40 Drawers'.blank?
category222 = Refinery::Products::Category.find_by_name('Drawers')
product222.categories << category222 if category222.present? and product222.present?
vehicle222 = Refinery::Products::Vehicle.find_by_name('D40')
product222.vehicles << vehicle222 if vehicle222.present? and product222.present?
product223 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Triton MK Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Triton MK Drawers'.blank?
category223 = Refinery::Products::Category.find_by_name('Drawers')
product223.categories << category223 if category223.present? and product223.present?
vehicle223 = Refinery::Products::Vehicle.find_by_name('MK 1996–2005')
product223.vehicles << vehicle223 if vehicle223.present? and product223.present?
product224 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Triton ML Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Triton ML Drawers'.blank?
category224 = Refinery::Products::Category.find_by_name('Drawers')
product224.categories << category224 if category224.present? and product224.present?
vehicle224 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product224.vehicles << vehicle224 if vehicle224.present? and product224.present?
product225 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Triton MN Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Triton MN Drawers'.blank?
category225 = Refinery::Products::Category.find_by_name('Drawers')
product225.categories << category225 if category225.present? and product225.present?
vehicle225 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product225.vehicles << vehicle225 if vehicle225.present? and product225.present?
product226 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Ranger PJ-PK Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Ranger PJ-PK Drawers'.blank?
category226 = Refinery::Products::Category.find_by_name('Drawers')
product226.categories << category226 if category226.present? and product226.present?
vehicle226 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product226.vehicles << vehicle226 if vehicle226.present? and product226.present?
product227 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Ranger PX Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Ranger PX Drawers'.blank?
category227 = Refinery::Products::Category.find_by_name('Drawers')
product227.categories << category227 if category227.present? and product227.present?
vehicle227 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product227.vehicles << vehicle227 if vehicle227.present? and product227.present?
product228 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'BT50 06+ Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'BT50 06+ Drawers'.blank?
category228 = Refinery::Products::Category.find_by_name('Drawers')
product228.categories << category228 if category228.present? and product228.present?
vehicle228 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product228.vehicles << vehicle228 if vehicle228.present? and product228.present?
product229 = Refinery::Products::Product.create!(product_no:'IDRAW1300', name:'Amarok Drawers', description:'Ironman 4x4 Drawer systems are a popular choice in storage solutions. Maximising your capacity and usability of your storage in the rear of your vehicle. Ironman 4x4 has tested all configurations on many and varied duration trips, from weekends to extended trips.', notes:nil) if not 'Amarok Drawers'.blank?
category229 = Refinery::Products::Category.find_by_name('Drawers')
product229.categories << category229 if category229.present? and product229.present?
vehicle229 = Refinery::Products::Vehicle.find_by_name('2010+')
product229.vehicles << vehicle229 if vehicle229.present? and product229.present?
product230 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category230 = Refinery::Products::Category.find_by_name('')
product230.categories << category230 if category230.present? and product230.present?
vehicle230 = Refinery::Products::Vehicle.find_by_name('')
product230.vehicles << vehicle230 if vehicle230.present? and product230.present?
product231 = Refinery::Products::Product.create!(product_no:'IWING001', name:'Pajero NM-NP 2000-2006 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Pajero NM-NP 2000-2006 Drawer Wing Kit'.blank?
category231 = Refinery::Products::Category.find_by_name('Wing Kits')
product231.categories << category231 if category231.present? and product231.present?
vehicle231 = Refinery::Products::Vehicle.find_by_name('NM-NP 2000-2006')
product231.vehicles << vehicle231 if vehicle231.present? and product231.present?
product232 = Refinery::Products::Product.create!(product_no:'IWING001', name:'Pajero NS Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Pajero NS Drawer Wing Kit'.blank?
category232 = Refinery::Products::Category.find_by_name('Wing Kits')
product232.categories << category232 if category232.present? and product232.present?
vehicle232 = Refinery::Products::Vehicle.find_by_name('NS 2006-2009')
product232.vehicles << vehicle232 if vehicle232.present? and product232.present?
product233 = Refinery::Products::Product.create!(product_no:'IWING001', name:'Pajero NT Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Pajero NT Drawer Wing Kit'.blank?
category233 = Refinery::Products::Category.find_by_name('Wing Kits')
product233.categories << category233 if category233.present? and product233.present?
vehicle233 = Refinery::Products::Vehicle.find_by_name('NT 2009-2011')
product233.vehicles << vehicle233 if vehicle233.present? and product233.present?
product234 = Refinery::Products::Product.create!(product_no:'IWING002', name:'Pajero NT Exceed Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Pajero NT Exceed Drawer Wing Kit'.blank?
category234 = Refinery::Products::Category.find_by_name('Wing Kits')
product234.categories << category234 if category234.present? and product234.present?
vehicle234 = Refinery::Products::Vehicle.find_by_name('NT 2009-2011')
product234.vehicles << vehicle234 if vehicle234.present? and product234.present?
product235 = Refinery::Products::Product.create!(product_no:'IWING002', name:'Pajero NS Exceed Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Pajero NS Exceed Drawer Wing Kit'.blank?
category235 = Refinery::Products::Category.find_by_name('Wing Kits')
product235.categories << category235 if category235.present? and product235.present?
vehicle235 = Refinery::Products::Vehicle.find_by_name('NS 2006-2009')
product235.vehicles << vehicle235 if vehicle235.present? and product235.present?
product236 = Refinery::Products::Product.create!(product_no:'IWING003', name:'Discovery Series 2 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Discovery Series 2 Drawer Wing Kit'.blank?
category236 = Refinery::Products::Category.find_by_name('Wing Kits')
product236.categories << category236 if category236.present? and product236.present?
vehicle236 = Refinery::Products::Vehicle.find_by_name('Series 2')
product236.vehicles << vehicle236 if vehicle236.present? and product236.present?
product237 = Refinery::Products::Product.create!(product_no:'IWING004', name:'Prado 95 GXL Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 95 GXL Drawer Wing Kit'.blank?
category237 = Refinery::Products::Category.find_by_name('Wing Kits')
product237.categories << category237 if category237.present? and product237.present?
vehicle237 = Refinery::Products::Vehicle.find_by_name('90 Series')
product237.vehicles << vehicle237 if vehicle237.present? and product237.present?
product238 = Refinery::Products::Product.create!(product_no:'IWING005', name:'Prado 120 GX (5 Seater) Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 120 GX (5 Seater) Drawer Wing Kit'.blank?
category238 = Refinery::Products::Category.find_by_name('Wing Kits')
product238.categories << category238 if category238.present? and product238.present?
vehicle238 = Refinery::Products::Vehicle.find_by_name('120 Series')
product238.vehicles << vehicle238 if vehicle238.present? and product238.present?
product239 = Refinery::Products::Product.create!(product_no:'IWING006', name:'Prado 120 GX (7 Seater) Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 120 GX (7 Seater) Drawer Wing Kit'.blank?
category239 = Refinery::Products::Category.find_by_name('Wing Kits')
product239.categories << category239 if category239.present? and product239.present?
vehicle239 = Refinery::Products::Vehicle.find_by_name('120 Series')
product239.vehicles << vehicle239 if vehicle239.present? and product239.present?
product240 = Refinery::Products::Product.create!(product_no:'IWING007', name:'Prado 120 GXL (7 Seater) Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 120 GXL (7 Seater) Drawer Wing Kit'.blank?
category240 = Refinery::Products::Category.find_by_name('Wing Kits')
product240.categories << category240 if category240.present? and product240.present?
vehicle240 = Refinery::Products::Vehicle.find_by_name('120 Series')
product240.vehicles << vehicle240 if vehicle240.present? and product240.present?
product241 = Refinery::Products::Product.create!(product_no:'IWING008', name:'Prado 150 GXL Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 150 GXL Drawer Wing Kit'.blank?
category241 = Refinery::Products::Category.find_by_name('Wing Kits')
product241.categories << category241 if category241.present? and product241.present?
vehicle241 = Refinery::Products::Vehicle.find_by_name('150 Series')
product241.vehicles << vehicle241 if vehicle241.present? and product241.present?
product242 = Refinery::Products::Product.create!(product_no:'IWING009', name:'Landcruiser 76 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 76 Series Drawer Wing Kit'.blank?
category242 = Refinery::Products::Category.find_by_name('Wing Kits')
product242.categories << category242 if category242.present? and product242.present?
vehicle242 = Refinery::Products::Vehicle.find_by_name('76 Series')
product242.vehicles << vehicle242 if vehicle242.present? and product242.present?
product243 = Refinery::Products::Product.create!(product_no:'IWING010', name:'Patrol GQ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Patrol GQ Drawer Wing Kit'.blank?
category243 = Refinery::Products::Category.find_by_name('Wing Kits')
product243.categories << category243 if category243.present? and product243.present?
vehicle243 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product243.vehicles << vehicle243 if vehicle243.present? and product243.present?
product244 = Refinery::Products::Product.create!(product_no:'IWING011', name:'Patrol GU DX, ST, STI Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Patrol GU DX, ST, STI Drawer Wing Kit'.blank?
category244 = Refinery::Products::Category.find_by_name('Wing Kits')
product244.categories << category244 if category244.present? and product244.present?
vehicle244 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product244.vehicles << vehicle244 if vehicle244.present? and product244.present?
product245 = Refinery::Products::Product.create!(product_no:'IWING012', name:'Patrol GU STL, TI Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Patrol GU STL, TI Drawer Wing Kit'.blank?
category245 = Refinery::Products::Category.find_by_name('Wing Kits')
product245.categories << category245 if category245.present? and product245.present?
vehicle245 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product245.vehicles << vehicle245 if vehicle245.present? and product245.present?
product246 = Refinery::Products::Product.create!(product_no:'IWING011', name:'Patrol GU DX, ST, STI Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Patrol GU DX, ST, STI Drawer Wing Kit'.blank?
category246 = Refinery::Products::Category.find_by_name('Wing Kits')
product246.categories << category246 if category246.present? and product246.present?
vehicle246 = Refinery::Products::Vehicle.find_by_name('GU S4 2005+')
product246.vehicles << vehicle246 if vehicle246.present? and product246.present?
product247 = Refinery::Products::Product.create!(product_no:'IWING012', name:'Patrol GU STL, TI Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Patrol GU STL, TI Drawer Wing Kit'.blank?
category247 = Refinery::Products::Category.find_by_name('Wing Kits')
product247.categories << category247 if category247.present? and product247.present?
vehicle247 = Refinery::Products::Vehicle.find_by_name('GU S4 2005+')
product247.vehicles << vehicle247 if vehicle247.present? and product247.present?
product248 = Refinery::Products::Product.create!(product_no:'IWING013', name:'Landcruiser 60 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 60 Series Drawer Wing Kit'.blank?
category248 = Refinery::Products::Category.find_by_name('Wing Kits')
product248.categories << category248 if category248.present? and product248.present?
vehicle248 = Refinery::Products::Vehicle.find_by_name('60 Series')
product248.vehicles << vehicle248 if vehicle248.present? and product248.present?
product249 = Refinery::Products::Product.create!(product_no:'IWING014', name:'Landcruiser 60 Series (w/ Factory Speakers) Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 60 Series (w/ Factory Speakers) Drawer Wing Kit'.blank?
category249 = Refinery::Products::Category.find_by_name('Wing Kits')
product249.categories << category249 if category249.present? and product249.present?
vehicle249 = Refinery::Products::Vehicle.find_by_name('60 Series')
product249.vehicles << vehicle249 if vehicle249.present? and product249.present?
product250 = Refinery::Products::Product.create!(product_no:'IWING015', name:'Landcruiser 80 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 80 Series Drawer Wing Kit'.blank?
category250 = Refinery::Products::Category.find_by_name('Wing Kits')
product250.categories << category250 if category250.present? and product250.present?
vehicle250 = Refinery::Products::Vehicle.find_by_name('80 Series')
product250.vehicles << vehicle250 if vehicle250.present? and product250.present?
product251 = Refinery::Products::Product.create!(product_no:'IWING016', name:'Landcruiser 80 Series GXL Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 80 Series GXL Drawer Wing Kit'.blank?
category251 = Refinery::Products::Category.find_by_name('Wing Kits')
product251.categories << category251 if category251.present? and product251.present?
vehicle251 = Refinery::Products::Vehicle.find_by_name('80 Series')
product251.vehicles << vehicle251 if vehicle251.present? and product251.present?
product252 = Refinery::Products::Product.create!(product_no:'IWING017', name:'Landcruiser 100 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 100 Series Drawer Wing Kit'.blank?
category252 = Refinery::Products::Category.find_by_name('Wing Kits')
product252.categories << category252 if category252.present? and product252.present?
vehicle252 = Refinery::Products::Vehicle.find_by_name('100 Series')
product252.vehicles << vehicle252 if vehicle252.present? and product252.present?
product253 = Refinery::Products::Product.create!(product_no:'IWING018', name:'Landcruiser 100 Series GXL 1998-2005 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 100 Series GXL 1998-2005 Drawer Wing Kit'.blank?
category253 = Refinery::Products::Category.find_by_name('Wing Kits')
product253.categories << category253 if category253.present? and product253.present?
vehicle253 = Refinery::Products::Vehicle.find_by_name('100 Series')
product253.vehicles << vehicle253 if vehicle253.present? and product253.present?
product254 = Refinery::Products::Product.create!(product_no:'IWING019', name:'Landcruiser 100 Series GXL 2005+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 100 Series GXL  2005+ Drawer Wing Kit'.blank?
category254 = Refinery::Products::Category.find_by_name('Wing Kits')
product254.categories << category254 if category254.present? and product254.present?
vehicle254 = Refinery::Products::Vehicle.find_by_name('100 Series')
product254.vehicles << vehicle254 if vehicle254.present? and product254.present?
product255 = Refinery::Products::Product.create!(product_no:'IWING020', name:'Landcruiser 200 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 200 Series Drawer Wing Kit'.blank?
category255 = Refinery::Products::Category.find_by_name('Wing Kits')
product255.categories << category255 if category255.present? and product255.present?
vehicle255 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product255.vehicles << vehicle255 if vehicle255.present? and product255.present?
product256 = Refinery::Products::Product.create!(product_no:'IWING020', name:'Landcruiser 200 Series Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 200 Series Drawer Wing Kit'.blank?
category256 = Refinery::Products::Category.find_by_name('Wing Kits')
product256.categories << category256 if category256.present? and product256.present?
vehicle256 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product256.vehicles << vehicle256 if vehicle256.present? and product256.present?
product257 = Refinery::Products::Product.create!(product_no:'IWING021', name:'Landcruiser 78 Series (Troop Carrier, 5 Seater) Pre 2008 GXL Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 78 Series (Troop Carrier, 5 Seater) Pre 2008 GXL Drawer Wing Kit'.blank?
category257 = Refinery::Products::Category.find_by_name('Wing Kits')
product257.categories << category257 if category257.present? and product257.present?
vehicle257 = Refinery::Products::Vehicle.find_by_name('78 Series Pre 2008')
product257.vehicles << vehicle257 if vehicle257.present? and product257.present?
product258 = Refinery::Products::Product.create!(product_no:'IWING022', name:'Landcruiser 78 Series 2008+GXL Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Landcruiser 78 Series 2008+GXL Drawer Wing Kit'.blank?
category258 = Refinery::Products::Category.find_by_name('Wing Kits')
product258.categories << category258 if category258.present? and product258.present?
vehicle258 = Refinery::Products::Vehicle.find_by_name('78 Series 2008+')
product258.vehicles << vehicle258 if vehicle258.present? and product258.present?
product259 = Refinery::Products::Product.create!(product_no:'IWING023', name:'Hilux Pre 2005 SR & SR5 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Hilux Pre 2005 SR & SR5 Drawer Wing Kit'.blank?
category259 = Refinery::Products::Category.find_by_name('Wing Kits')
product259.categories << category259 if category259.present? and product259.present?
vehicle259 = Refinery::Products::Vehicle.find_by_name('Pre 2005')
product259.vehicles << vehicle259 if vehicle259.present? and product259.present?
product260 = Refinery::Products::Product.create!(product_no:'IWING024', name:'Hilux 2005-2011 SR & SR5 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Hilux 2005-2011 SR & SR5 Drawer Wing Kit'.blank?
category260 = Refinery::Products::Category.find_by_name('Wing Kits')
product260.categories << category260 if category260.present? and product260.present?
vehicle260 = Refinery::Products::Vehicle.find_by_name('2005-2011')
product260.vehicles << vehicle260 if vehicle260.present? and product260.present?
product261 = Refinery::Products::Product.create!(product_no:'IWING025', name:'Navara D22 Pre 2007 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Navara D22 Pre 2007 Drawer Wing Kit'.blank?
category261 = Refinery::Products::Category.find_by_name('Wing Kits')
product261.categories << category261 if category261.present? and product261.present?
vehicle261 = Refinery::Products::Vehicle.find_by_name('D22')
product261.vehicles << vehicle261 if vehicle261.present? and product261.present?
product262 = Refinery::Products::Product.create!(product_no:'IWING026', name:'Navara D22 2007+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Navara D22 2007+ Drawer Wing Kit'.blank?
category262 = Refinery::Products::Category.find_by_name('Wing Kits')
product262.categories << category262 if category262.present? and product262.present?
vehicle262 = Refinery::Products::Vehicle.find_by_name('D22')
product262.vehicles << vehicle262 if vehicle262.present? and product262.present?
product263 = Refinery::Products::Product.create!(product_no:'IWING027', name:'Navara D40 STX, RX 2005+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Navara D40 STX, RX 2005+ Drawer Wing Kit'.blank?
category263 = Refinery::Products::Category.find_by_name('Wing Kits')
product263.categories << category263 if category263.present? and product263.present?
vehicle263 = Refinery::Products::Vehicle.find_by_name('D40')
product263.vehicles << vehicle263 if vehicle263.present? and product263.present?
product264 = Refinery::Products::Product.create!(product_no:'IWING028', name:'Navara ST 2010 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Navara ST 2010 Drawer Wing Kit'.blank?
category264 = Refinery::Products::Category.find_by_name('Wing Kits')
product264.categories << category264 if category264.present? and product264.present?
vehicle264 = Refinery::Products::Vehicle.find_by_name('D40')
product264.vehicles << vehicle264 if vehicle264.present? and product264.present?
product265 = Refinery::Products::Product.create!(product_no:'IWING029', name:'Navara STX 2006 (Spain Build) Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Navara STX 2006 (Spain Build) Drawer Wing Kit'.blank?
category265 = Refinery::Products::Category.find_by_name('Wing Kits')
product265.categories << category265 if category265.present? and product265.present?
vehicle265 = Refinery::Products::Vehicle.find_by_name('D40')
product265.vehicles << vehicle265 if vehicle265.present? and product265.present?
product266 = Refinery::Products::Product.create!(product_no:'IWING030', name:'Triton MK Pre 2005 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Triton MK Pre 2005 Drawer Wing Kit'.blank?
category266 = Refinery::Products::Category.find_by_name('Wing Kits')
product266.categories << category266 if category266.present? and product266.present?
vehicle266 = Refinery::Products::Vehicle.find_by_name('MK 1996–2005')
product266.vehicles << vehicle266 if vehicle266.present? and product266.present?
product267 = Refinery::Products::Product.create!(product_no:'IWING031', name:'Triton ML 2006-2009 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Triton ML 2006-2009 Drawer Wing Kit'.blank?
category267 = Refinery::Products::Category.find_by_name('Wing Kits')
product267.categories << category267 if category267.present? and product267.present?
vehicle267 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product267.vehicles << vehicle267 if vehicle267.present? and product267.present?
product268 = Refinery::Products::Product.create!(product_no:'IWING032', name:'Triton MN 2009+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Triton MN 2009+ Drawer Wing Kit'.blank?
category268 = Refinery::Products::Category.find_by_name('Wing Kits')
product268.categories << category268 if category268.present? and product268.present?
vehicle268 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product268.vehicles << vehicle268 if vehicle268.present? and product268.present?
product269 = Refinery::Products::Product.create!(product_no:'IWING033', name:'Ranger (Dual Cab & Extra Cab) PJ-PK Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Ranger (Dual Cab & Extra Cab) PJ-PK Drawer Wing Kit'.blank?
category269 = Refinery::Products::Category.find_by_name('Wing Kits')
product269.categories << category269 if category269.present? and product269.present?
vehicle269 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product269.vehicles << vehicle269 if vehicle269.present? and product269.present?
product270 = Refinery::Products::Product.create!(product_no:'IWING034', name:'Rodeo RA 2003-2008 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Rodeo RA 2003-2008 Drawer Wing Kit'.blank?
category270 = Refinery::Products::Category.find_by_name('Wing Kits')
product270.categories << category270 if category270.present? and product270.present?
vehicle270 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product270.vehicles << vehicle270 if vehicle270.present? and product270.present?
product271 = Refinery::Products::Product.create!(product_no:'IWING034', name:'Colorado 2008-2012 Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Colorado 2008-2012 Drawer Wing Kit'.blank?
category271 = Refinery::Products::Category.find_by_name('Wing Kits')
product271.categories << category271 if category271.present? and product271.present?
vehicle271 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product271.vehicles << vehicle271 if vehicle271.present? and product271.present?
product272 = Refinery::Products::Product.create!(product_no:'IWING034', name:'D-Max 2008+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'D-Max 2008+ Drawer Wing Kit'.blank?
category272 = Refinery::Products::Category.find_by_name('Wing Kits')
product272.categories << category272 if category272.present? and product272.present?
vehicle272 = Refinery::Products::Vehicle.find_by_name('2008+')
product272.vehicles << vehicle272 if vehicle272.present? and product272.present?
product273 = Refinery::Products::Product.create!(product_no:'IWING036', name:'Prado 150 GX Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Prado 150 GX Drawer Wing Kit'.blank?
category273 = Refinery::Products::Category.find_by_name('Wing Kits')
product273.categories << category273 if category273.present? and product273.present?
vehicle273 = Refinery::Products::Vehicle.find_by_name('150 Series')
product273.vehicles << vehicle273 if vehicle273.present? and product273.present?
product274 = Refinery::Products::Product.create!(product_no:'IWING037', name:'BT50 2012+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'BT50 2012+ Drawer Wing Kit'.blank?
category274 = Refinery::Products::Category.find_by_name('Wing Kits')
product274.categories << category274 if category274.present? and product274.present?
vehicle274 = Refinery::Products::Vehicle.find_by_name('2012+')
product274.vehicles << vehicle274 if vehicle274.present? and product274.present?
product275 = Refinery::Products::Product.create!(product_no:'IWING037', name:'Ranger PX 2012+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Ranger PX 2012+ Drawer Wing Kit'.blank?
category275 = Refinery::Products::Category.find_by_name('Wing Kits')
product275.categories << category275 if category275.present? and product275.present?
vehicle275 = Refinery::Products::Vehicle.find_by_name('PX 2012+')
product275.vehicles << vehicle275 if vehicle275.present? and product275.present?
product276 = Refinery::Products::Product.create!(product_no:'IWING038', name:'Colorado RG 2012+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Colorado RG 2012+ Drawer Wing Kit'.blank?
category276 = Refinery::Products::Category.find_by_name('Wing Kits')
product276.categories << category276 if category276.present? and product276.present?
vehicle276 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product276.vehicles << vehicle276 if vehicle276.present? and product276.present?
product277 = Refinery::Products::Product.create!(product_no:'IWING038', name:'D-Max 2012+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'D-Max 2012+ Drawer Wing Kit'.blank?
category277 = Refinery::Products::Category.find_by_name('Wing Kits')
product277.categories << category277 if category277.present? and product277.present?
vehicle277 = Refinery::Products::Vehicle.find_by_name('2012+')
product277.vehicles << vehicle277 if vehicle277.present? and product277.present?
product278 = Refinery::Products::Product.create!(product_no:'IWING039', name:'FJ Cruiser Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'FJ Cruiser Drawer Wing Kit'.blank?
category278 = Refinery::Products::Category.find_by_name('Wing Kits')
product278.categories << category278 if category278.present? and product278.present?
vehicle278 = Refinery::Products::Vehicle.find_by_name('2006+')
product278.vehicles << vehicle278 if vehicle278.present? and product278.present?
product279 = Refinery::Products::Product.create!(product_no:'IWING040', name:'Amarok 2010+ Drawer Wing Kit', description:'Wing Kits help creates more functional room around your drawer system as it takes out and covers up the wheel arches providing you with a flat surface that reaches the entire width of the inside of your vehicle.', notes:nil) if not 'Amarok 2010+ Drawer Wing Kit'.blank?
category279 = Refinery::Products::Category.find_by_name('Wing Kits')
product279.categories << category279 if category279.present? and product279.present?
vehicle279 = Refinery::Products::Vehicle.find_by_name('2010+')
product279.vehicles << vehicle279 if vehicle279.present? and product279.present?
product280 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category280 = Refinery::Products::Category.find_by_name('')
product280.categories << category280 if category280.present? and product280.present?
vehicle280 = Refinery::Products::Vehicle.find_by_name('')
product280.vehicles << vehicle280 if vehicle280.present? and product280.present?
product281 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category281 = Refinery::Products::Category.find_by_name('')
product281.categories << category281 if category281.present? and product281.present?
vehicle281 = Refinery::Products::Vehicle.find_by_name('')
product281.vehicles << vehicle281 if vehicle281.present? and product281.present?
product282 = Refinery::Products::Product.create!(product_no:'ISNORKEL001', name:'Hilux 2005-2011 - 3.0L D4D TDi / 4.0L Petrol V6 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Hilux 2005-2011 - 3.0L D4D TDi / 4.0L Petrol V6 Snorkel'.blank?
category282 = Refinery::Products::Category.find_by_name('Snorkels')
product282.categories << category282 if category282.present? and product282.present?
vehicle282 = Refinery::Products::Vehicle.find_by_name('2005-2011')
product282.vehicles << vehicle282 if vehicle282.present? and product282.present?
product283 = Refinery::Products::Product.create!(product_no:'ISNORKEL003', name:'100 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '100 Series Snorkel'.blank?
category283 = Refinery::Products::Category.find_by_name('Snorkels')
product283.categories << category283 if category283.present? and product283.present?
vehicle283 = Refinery::Products::Vehicle.find_by_name('100 Series')
product283.vehicles << vehicle283 if vehicle283.present? and product283.present?
product284 = Refinery::Products::Product.create!(product_no:'ISNORKEL003', name:'105 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '105 Series Snorkel'.blank?
category284 = Refinery::Products::Category.find_by_name('Snorkels')
product284.categories << category284 if category284.present? and product284.present?
vehicle284 = Refinery::Products::Vehicle.find_by_name('105 Series')
product284.vehicles << vehicle284 if vehicle284.present? and product284.present?
product285 = Refinery::Products::Product.create!(product_no:'ISNORKEL003', name:'LX 470 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'LX 470 Snorkel'.blank?
category285 = Refinery::Products::Category.find_by_name('Snorkels')
product285.categories << category285 if category285.present? and product285.present?
vehicle285 = Refinery::Products::Vehicle.find_by_name('LX470')
product285.vehicles << vehicle285 if vehicle285.present? and product285.present?
product286 = Refinery::Products::Product.create!(product_no:'ISNORKEL004', name:'80 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '80 Series Snorkel'.blank?
category286 = Refinery::Products::Category.find_by_name('Snorkels')
product286.categories << category286 if category286.present? and product286.present?
vehicle286 = Refinery::Products::Vehicle.find_by_name('80 Series')
product286.vehicles << vehicle286 if vehicle286.present? and product286.present?
product287 = Refinery::Products::Product.create!(product_no:'ISNORKEL004', name:'LX 450 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'LX 450 Snorkel'.blank?
category287 = Refinery::Products::Category.find_by_name('Snorkels')
product287.categories << category287 if category287.present? and product287.present?
vehicle287 = Refinery::Products::Vehicle.find_by_name('LX450')
product287.vehicles << vehicle287 if vehicle287.present? and product287.present?
product288 = Refinery::Products::Product.create!(product_no:'ISNORKEL005', name:'90/95 Series - 3.4L Petrol V6 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '90/95 Series  - 3.4L Petrol V6 Snorkel'.blank?
category288 = Refinery::Products::Category.find_by_name('Snorkels')
product288.categories << category288 if category288.present? and product288.present?
vehicle288 = Refinery::Products::Vehicle.find_by_name('90 Series')
product288.vehicles << vehicle288 if vehicle288.present? and product288.present?
product289 = Refinery::Products::Product.create!(product_no:'ISNORKEL007', name:'120 Series - 3.0L Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '120 Series - 3.0L Diesel Snorkel'.blank?
category289 = Refinery::Products::Category.find_by_name('Snorkels')
product289.categories << category289 if category289.present? and product289.present?
vehicle289 = Refinery::Products::Vehicle.find_by_name('120 Series')
product289.vehicles << vehicle289 if vehicle289.present? and product289.present?
product290 = Refinery::Products::Product.create!(product_no:'ISNORKEL008', name:'71 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '71 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel'.blank?
category290 = Refinery::Products::Category.find_by_name('Snorkels')
product290.categories << category290 if category290.present? and product290.present?
vehicle290 = Refinery::Products::Vehicle.find_by_name('71 Series')
product290.vehicles << vehicle290 if vehicle290.present? and product290.present?
product291 = Refinery::Products::Product.create!(product_no:'ISNORKEL008', name:'73 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '73 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel'.blank?
category291 = Refinery::Products::Category.find_by_name('Snorkels')
product291.categories << category291 if category291.present? and product291.present?
vehicle291 = Refinery::Products::Vehicle.find_by_name('73 Series')
product291.vehicles << vehicle291 if vehicle291.present? and product291.present?
product292 = Refinery::Products::Product.create!(product_no:'ISNORKEL008', name:'75 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '75 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel'.blank?
category292 = Refinery::Products::Category.find_by_name('Snorkels')
product292.categories << category292 if category292.present? and product292.present?
vehicle292 = Refinery::Products::Vehicle.find_by_name('75 Series')
product292.vehicles << vehicle292 if vehicle292.present? and product292.present?
product293 = Refinery::Products::Product.create!(product_no:'ISNORKEL008', name:'78 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '78 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel'.blank?
category293 = Refinery::Products::Category.find_by_name('Snorkels')
product293.categories << category293 if category293.present? and product293.present?
vehicle293 = Refinery::Products::Vehicle.find_by_name('78 Series')
product293.vehicles << vehicle293 if vehicle293.present? and product293.present?
product294 = Refinery::Products::Product.create!(product_no:'ISNORKEL008', name:'79 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '79 Series (Pre 2007) - 4.0L 3F Petrol / 2H Diesel Snorkel'.blank?
category294 = Refinery::Products::Category.find_by_name('Snorkels')
product294.categories << category294 if category294.present? and product294.present?
vehicle294 = Refinery::Products::Vehicle.find_by_name('79 Series')
product294.vehicles << vehicle294 if vehicle294.present? and product294.present?
product295 = Refinery::Products::Product.create!(product_no:'ISNORKEL009', name:'71 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '71 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel'.blank?
category295 = Refinery::Products::Category.find_by_name('Snorkels')
product295.categories << category295 if category295.present? and product295.present?
vehicle295 = Refinery::Products::Vehicle.find_by_name('71 Series')
product295.vehicles << vehicle295 if vehicle295.present? and product295.present?
product296 = Refinery::Products::Product.create!(product_no:'ISNORKEL009', name:'73 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '73 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel'.blank?
category296 = Refinery::Products::Category.find_by_name('Snorkels')
product296.categories << category296 if category296.present? and product296.present?
vehicle296 = Refinery::Products::Vehicle.find_by_name('73 Series')
product296.vehicles << vehicle296 if vehicle296.present? and product296.present?
product297 = Refinery::Products::Product.create!(product_no:'ISNORKEL009', name:'75 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '75 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel'.blank?
category297 = Refinery::Products::Category.find_by_name('Snorkels')
product297.categories << category297 if category297.present? and product297.present?
vehicle297 = Refinery::Products::Vehicle.find_by_name('75 Series')
product297.vehicles << vehicle297 if vehicle297.present? and product297.present?
product298 = Refinery::Products::Product.create!(product_no:'ISNORKEL009', name:'78 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '78 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel'.blank?
category298 = Refinery::Products::Category.find_by_name('Snorkels')
product298.categories << category298 if category298.present? and product298.present?
vehicle298 = Refinery::Products::Vehicle.find_by_name('78 Series')
product298.vehicles << vehicle298 if vehicle298.present? and product298.present?
product299 = Refinery::Products::Product.create!(product_no:'ISNORKEL009', name:'79 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '79 Series (Pre 2007) - 4.2L 1HZ Diesel Snorkel'.blank?
category299 = Refinery::Products::Category.find_by_name('Snorkels')
product299.categories << category299 if category299.present? and product299.present?
vehicle299 = Refinery::Products::Vehicle.find_by_name('79 Series')
product299.vehicles << vehicle299 if vehicle299.present? and product299.present?
product300 = Refinery::Products::Product.create!(product_no:'ISNORKEL010', name:'200 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '200 Series Snorkel'.blank?
category300 = Refinery::Products::Category.find_by_name('Snorkels')
product300.categories << category300 if category300.present? and product300.present?
vehicle300 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product300.vehicles << vehicle300 if vehicle300.present? and product300.present?
product301 = Refinery::Products::Product.create!(product_no:'ISNORKEL010', name:'200 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not '200 Series Snorkel'.blank?
category301 = Refinery::Products::Category.find_by_name('Snorkels')
product301.categories << category301 if category301.present? and product301.present?
vehicle301 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product301.vehicles << vehicle301 if vehicle301.present? and product301.present?
product302 = Refinery::Products::Product.create!(product_no:'ISNORKEL011', name:'Patrol GQ - ( All models except 2.8L Diesel) Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Patrol GQ - ( All models except 2.8L Diesel) Snorkel'.blank?
category302 = Refinery::Products::Category.find_by_name('Snorkels')
product302.categories << category302 if category302.present? and product302.present?
vehicle302 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product302.vehicles << vehicle302 if vehicle302.present? and product302.present?
product303 = Refinery::Products::Product.create!(product_no:'ISNORKEL013', name:'Patrol GU Series 4 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Patrol GU Series 4 Snorkel'.blank?
category303 = Refinery::Products::Category.find_by_name('Snorkels')
product303.categories << category303 if category303.present? and product303.present?
vehicle303 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product303.vehicles << vehicle303 if vehicle303.present? and product303.present?
product304 = Refinery::Products::Product.create!(product_no:'ISNORKEL015', name:'Patrol GU Series 1,2 & 3 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Patrol GU Series 1,2 & 3 Snorkel'.blank?
category304 = Refinery::Products::Category.find_by_name('Snorkels')
product304.categories << category304 if category304.present? and product304.present?
vehicle304 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product304.vehicles << vehicle304 if vehicle304.present? and product304.present?
product305 = Refinery::Products::Product.create!(product_no:'ISNORKEL019', name:'Navara D40 Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Navara D40 Snorkel'.blank?
category305 = Refinery::Products::Category.find_by_name('Snorkels')
product305.categories << category305 if category305.present? and product305.present?
vehicle305 = Refinery::Products::Vehicle.find_by_name('D40')
product305.vehicles << vehicle305 if vehicle305.present? and product305.present?
product306 = Refinery::Products::Product.create!(product_no:'ISNORKEL019', name:'Pathfinder R51 - 2.5L Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Pathfinder R51 - 2.5L Diesel Snorkel'.blank?
category306 = Refinery::Products::Category.find_by_name('Snorkels')
product306.categories << category306 if category306.present? and product306.present?
vehicle306 = Refinery::Products::Vehicle.find_by_name('R51')
product306.vehicles << vehicle306 if vehicle306.present? and product306.present?
product307 = Refinery::Products::Product.create!(product_no:'ISNORKEL020', name:'Triton ML Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Triton ML Snorkel'.blank?
category307 = Refinery::Products::Category.find_by_name('Snorkels')
product307.categories << category307 if category307.present? and product307.present?
vehicle307 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product307.vehicles << vehicle307 if vehicle307.present? and product307.present?
product308 = Refinery::Products::Product.create!(product_no:'ISNORKEL020', name:'Triton MN Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Triton MN Snorkel'.blank?
category308 = Refinery::Products::Category.find_by_name('Snorkels')
product308.categories << category308 if category308.present? and product308.present?
vehicle308 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product308.vehicles << vehicle308 if vehicle308.present? and product308.present?
product309 = Refinery::Products::Product.create!(product_no:'ISNORKEL021', name:'Ranger PJ-PK 3.0L TDi Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Ranger PJ-PK 3.0L TDi Diesel Snorkel'.blank?
category309 = Refinery::Products::Category.find_by_name('Snorkels')
product309.categories << category309 if category309.present? and product309.present?
vehicle309 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product309.vehicles << vehicle309 if vehicle309.present? and product309.present?
product310 = Refinery::Products::Product.create!(product_no:'ISNORKEL022', name:'Rodeo RA7 LX LT (Not DX) Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Rodeo RA7 LX LT (Not DX) Snorkel'.blank?
category310 = Refinery::Products::Category.find_by_name('Snorkels')
product310.categories << category310 if category310.present? and product310.present?
vehicle310 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product310.vehicles << vehicle310 if vehicle310.present? and product310.present?
product311 = Refinery::Products::Product.create!(product_no:'ISNORKEL022', name:'D-Max 2009+ (Not 4x2 SX models) Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'D-Max 2009+ (Not 4x2 SX models) Snorkel'.blank?
category311 = Refinery::Products::Category.find_by_name('Snorkels')
product311.categories << category311 if category311.present? and product311.present?
vehicle311 = Refinery::Products::Vehicle.find_by_name('2009+')
product311.vehicles << vehicle311 if vehicle311.present? and product311.present?
product312 = Refinery::Products::Product.create!(product_no:'ISNORKEL023', name:'Landcruiser 70 Series 1HZ Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Landcruiser 70 Series 1HZ Snorkel'.blank?
category312 = Refinery::Products::Category.find_by_name('Snorkels')
product312.categories << category312 if category312.present? and product312.present?
vehicle312 = Refinery::Products::Vehicle.find_by_name('70 Series')
product312.vehicles << vehicle312 if vehicle312.present? and product312.present?
product313 = Refinery::Products::Product.create!(product_no:'ISNORKEL024', name:'BT50 3.0L Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'BT50 3.0L Diesel Snorkel'.blank?
category313 = Refinery::Products::Category.find_by_name('Snorkels')
product313.categories << category313 if category313.present? and product313.present?
vehicle313 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product313.vehicles << vehicle313 if vehicle313.present? and product313.present?
product314 = Refinery::Products::Product.create!(product_no:'ISNORKEL028', name:'Colorado 2008-2012 3.0L Diesel Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Colorado 2008-2012 3.0L Diesel Snorkel'.blank?
category314 = Refinery::Products::Category.find_by_name('Snorkels')
product314.categories << category314 if category314.present? and product314.present?
vehicle314 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product314.vehicles << vehicle314 if vehicle314.present? and product314.present?
product315 = Refinery::Products::Product.create!(product_no:'ISNORKEL029', name:'FJ Cruiser Snorkel (Suits US models only)', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'FJ Cruiser Snorkel (Suits US models only)'.blank?
category315 = Refinery::Products::Category.find_by_name('Snorkels')
product315.categories << category315 if category315.present? and product315.present?
vehicle315 = Refinery::Products::Vehicle.find_by_name('2006+')
product315.vehicles << vehicle315 if vehicle315.present? and product315.present?
product316 = Refinery::Products::Product.create!(product_no:'ISNORKEL032', name:'JK Wrangler Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'JK Wrangler Snorkel'.blank?
category316 = Refinery::Products::Category.find_by_name('Snorkels')
product316.categories << category316 if category316.present? and product316.present?
vehicle316 = Refinery::Products::Vehicle.find_by_name('JK')
product316.vehicles << vehicle316 if vehicle316.present? and product316.present?
product317 = Refinery::Products::Product.create!(product_no:'ISNORKEL034', name:'PX Ranger T6 2011+ Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'PX Ranger T6 2011+ Snorkel'.blank?
category317 = Refinery::Products::Category.find_by_name('Snorkels')
product317.categories << category317 if category317.present? and product317.present?
vehicle317 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product317.vehicles << vehicle317 if vehicle317.present? and product317.present?
product318 = Refinery::Products::Product.create!(product_no:'ISNORKEL035', name:'Prado 150 Series Snorkel', description:'Ironman Snorkels are perfect for the value-concious 4WDer. Available for a limited number of applications, 4WDs fitted with Ironman Snorkels benefit from increased airflow to the engine and a raised air intake to minimse the chances of water intake. ', notes:nil) if not 'Prado 150 Series Snorkel'.blank?
category318 = Refinery::Products::Category.find_by_name('Snorkels')
product318.categories << category318 if category318.present? and product318.present?
vehicle318 = Refinery::Products::Vehicle.find_by_name('150 Series')
product318.vehicles << vehicle318 if vehicle318.present? and product318.present?
product319 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category319 = Refinery::Products::Category.find_by_name('')
product319.categories << category319 if category319.present? and product319.present?
vehicle319 = Refinery::Products::Vehicle.find_by_name('')
product319.vehicles << vehicle319 if vehicle319.present? and product319.present?
product320 = Refinery::Products::Product.create!(product_no:'ISNORKEL3"HAT', name:'3" Snorkel Hat', description:'4WDs fitted with Ironman Snorkel Hats benefit from increased airflow to the engine', notes:nil) if not '3" Snorkel Hat '.blank?
category320 = Refinery::Products::Category.find_by_name('Spare Parts')
product320.categories << category320 if category320.present? and product320.present?
vehicle320 = Refinery::Products::Vehicle.find_by_name('')
product320.vehicles << vehicle320 if vehicle320.present? and product320.present?
product321 = Refinery::Products::Product.create!(product_no:'ISNORKEL3.5"HAT', name:'3.5" Snorkel Hat', description:'4WDs fitted with Ironman Snorkel Hats benefit from increased airflow to the engine', notes:nil) if not '3.5" Snorkel Hat '.blank?
category321 = Refinery::Products::Category.find_by_name('Spare Parts')
product321.categories << category321 if category321.present? and product321.present?
vehicle321 = Refinery::Products::Vehicle.find_by_name('')
product321.vehicles << vehicle321 if vehicle321.present? and product321.present?
product322 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category322 = Refinery::Products::Category.find_by_name('')
product322.categories << category322 if category322.present? and product322.present?
vehicle322 = Refinery::Products::Vehicle.find_by_name('')
product322.vehicles << vehicle322 if vehicle322.present? and product322.present?
product323 = Refinery::Products::Product.create!(product_no:'IGAMMA175', name:'Gamma 100W Halogen Driving Light 7” (H3) (Pair)', description:'The Gamma 175 Halogen driving lights are a compact slim design featuring a 60mm depth and 175mm diameter, they are perfect for most applications. The lights have a 100W H3 halogen bulb, hardened glass lens and the wiring loom is included.', notes:nil) if not 'Gamma 100W Halogen Driving Light 7” (H3) (Pair)  '.blank?
category323 = Refinery::Products::Category.find_by_name('Driving Lights')
product323.categories << category323 if category323.present? and product323.present?
vehicle323 = Refinery::Products::Vehicle.find_by_name('')
product323.vehicles << vehicle323 if vehicle323.present? and product323.present?
product324 = Refinery::Products::Product.create!(product_no:'IVEGA220', name:'Vega 100W Halogen Driving Light 9” (H1) (Pair)', description:'The Vega 220 Halogen driving lights are for the seasoned offroader or tourer. The lights feature a 100W H1 halogen bulb, hardened glass lens, impact resistant ABS housing and the wiring loom is included. Depth 145mm diameter 220mm.', notes:nil) if not 'Vega 100W Halogen Driving Light 9” (H1) (Pair) '.blank?
category324 = Refinery::Products::Category.find_by_name('Driving Lights')
product324.categories << category324 if category324.present? and product324.present?
vehicle324 = Refinery::Products::Vehicle.find_by_name('')
product324.vehicles << vehicle324 if vehicle324.present? and product324.present?
product325 = Refinery::Products::Product.create!(product_no:'IHID001', name:'Supernova 35W HID Driving Light 9” (H11, 6000k) (Pair)', description:'The Supernova HID driving lights have been engineered to see up to 1km in distance! HID lights are 3 times brighter, bulb life is 10 times longer, draws 60% less power and produces much less heat than halogen lights. The lights feature a 35W H11 HID bulb, hardened glass lens, impact resistant ABS housing, internal ballast and the wiring loom is included. Depth 145mm diameter 220mm.', notes:nil) if not 'Supernova 35W HID Driving Light 9” (H11, 6000k) (Pair)'.blank?
category325 = Refinery::Products::Category.find_by_name('Driving Lights')
product325.categories << category325 if category325.present? and product325.present?
vehicle325 = Refinery::Products::Vehicle.find_by_name('')
product325.vehicles << vehicle325 if vehicle325.present? and product325.present?
product326 = Refinery::Products::Product.create!(product_no:'ILED180S', name:'LED 3 x 10W Spot Beam Light bar', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'LED 3 x 10W Spot Beam Light bar'.blank?
category326 = Refinery::Products::Category.find_by_name('LED Light Bars')
product326.categories << category326 if category326.present? and product326.present?
vehicle326 = Refinery::Products::Vehicle.find_by_name('')
product326.vehicles << vehicle326 if vehicle326.present? and product326.present?
product327 = Refinery::Products::Product.create!(product_no:'ILED180F', name:'LED 3 x 10W Flood Beam Light bar', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'LED 3 x 10W Flood Beam Light bar'.blank?
category327 = Refinery::Products::Category.find_by_name('LED Light Bars')
product327.categories << category327 if category327.present? and product327.present?
vehicle327 = Refinery::Products::Vehicle.find_by_name('')
product327.vehicles << vehicle327 if vehicle327.present? and product327.present?
product328 = Refinery::Products::Product.create!(product_no:'ILED80', name:'LED Universal Spot Light 16 W Square', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'LED Universal Spot Light 16 W Square'.blank?
category328 = Refinery::Products::Category.find_by_name('Work Lights')
product328.categories << category328 if category328.present? and product328.present?
vehicle328 = Refinery::Products::Vehicle.find_by_name('')
product328.vehicles << vehicle328 if vehicle328.present? and product328.present?
product329 = Refinery::Products::Product.create!(product_no:'ILEDSR276', name:'Single Row LED Light Bar 276MM 30W', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'Single Row LED Light Bar 276MM 30W'.blank?
category329 = Refinery::Products::Category.find_by_name('LED Light Bars')
product329.categories << category329 if category329.present? and product329.present?
vehicle329 = Refinery::Products::Vehicle.find_by_name('')
product329.vehicles << vehicle329 if vehicle329.present? and product329.present?
product330 = Refinery::Products::Product.create!(product_no:'ILEDSR516', name:'Single Row LED Light Bar 516MM 60W', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'Single Row LED Light Bar 516MM 60W'.blank?
category330 = Refinery::Products::Category.find_by_name('LED Light Bars')
product330.categories << category330 if category330.present? and product330.present?
vehicle330 = Refinery::Products::Vehicle.find_by_name('')
product330.vehicles << vehicle330 if vehicle330.present? and product330.present?
product331 = Refinery::Products::Product.create!(product_no:'ILEDSR756', name:'Single Row LED Light Bar 756MM 90W', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'Single Row LED Light Bar 756MM 90W'.blank?
category331 = Refinery::Products::Category.find_by_name('LED Light Bars')
product331.categories << category331 if category331.present? and product331.present?
vehicle331 = Refinery::Products::Vehicle.find_by_name('')
product331.vehicles << vehicle331 if vehicle331.present? and product331.present?
product332 = Refinery::Products::Product.create!(product_no:'ILEDSR1016', name:'Single Row LED Light Bar 1016MM 120W', description:'Ironman have a light bar for every situation and application. Featuring the CREE LEDs Ironman light bars range from just 3" through to 30"!', notes:nil) if not 'Single Row LED Light Bar 1016MM 120W'.blank?
category332 = Refinery::Products::Category.find_by_name('LED Light Bars')
product332.categories << category332 if category332.present? and product332.present?
vehicle332 = Refinery::Products::Vehicle.find_by_name('')
product332.vehicles << vehicle332 if vehicle332.present? and product332.present?
product333 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category333 = Refinery::Products::Category.find_by_name('')
product333.categories << category333 if category333.present? and product333.present?
vehicle333 = Refinery::Products::Vehicle.find_by_name('')
product333.vehicles << vehicle333 if vehicle333.present? and product333.present?
product334 = Refinery::Products::Product.create!(product_no:'DB001', name:'Dual Battery Kit -140 amp (Includes Monitor )', description:'The Ironman 140 Amp Dual Battery Kit allows two batteries to be charged at the same time. When the engine is started and the main battery reaches 13.4 volts, the Ironman module engages, allowing the two batteries to be charged simultaneously. When the voltage drops below 12.8 volts (e.g. the engine is stopped), the Ironman module disengages, isolating the batteries. The Ironman 140 Amp Dual Battery Kit eliminates the possibility of draining the starting battery, as long as your accessories are connected to your auxiliary battery.', notes:nil) if not 'Dual Battery Kit -140 amp (Includes Monitor )'.blank?
category334 = Refinery::Products::Category.find_by_name('Dual Battery Systems')
product334.categories << category334 if category334.present? and product334.present?
vehicle334 = Refinery::Products::Vehicle.find_by_name('')
product334.vehicles << vehicle334 if vehicle334.present? and product334.present?
product335 = Refinery::Products::Product.create!(product_no:'DB002', name:'Dual Battery Kit -275 amp Motorised (Includes Monitor & Override switch)', description:'The Ironman 275 Amp Dual Battery Kit performs an automated parallel function which allows two separate batteries to be charged as one. When the main battery reaches 13.7 volts, the Ironman 275 Amp Dual Battery Kit engages, allowing two batteries to be charged simultaneously. When the voltage drops below 12.2 volts, the Ironman 275 Amp Dual Battery Kit disengages, isolating the batteries. This system eliminates the possibility of draining the start battery, as long as your accessories are connected to your auxiliary battery. Emergency Parallel Function: The Ironman 275 Amp Dual Battery Kit allows the user to override the automatic function and link the two batteries together. This can be done by turning the yellow knob on the unit or by pushing the override switch located in the vehicle.', notes:nil) if not 'Dual Battery Kit -275 amp Motorised (Includes Monitor & Override switch)'.blank?
category335 = Refinery::Products::Category.find_by_name('Dual Battery Systems')
product335.categories << category335 if category335.present? and product335.present?
vehicle335 = Refinery::Products::Vehicle.find_by_name('')
product335.vehicles << vehicle335 if vehicle335.present? and product335.present?
product336 = Refinery::Products::Product.create!(product_no:'DB MONITOR', name:'Dual Battery Monitor (Only)', description:'The Ironman dual battery monitor displays the voltage levels of both batteries.', notes:nil) if not 'Dual Battery Monitor (Only)'.blank?
category336 = Refinery::Products::Category.find_by_name('Dual Battery Systems')
product336.categories << category336 if category336.present? and product336.present?
vehicle336 = Refinery::Products::Vehicle.find_by_name('')
product336.vehicles << vehicle336 if vehicle336.present? and product336.present?
product337 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category337 = Refinery::Products::Category.find_by_name('')
product337.categories << category337 if category337.present? and product337.present?
vehicle337 = Refinery::Products::Vehicle.find_by_name('')
product337.vehicles << vehicle337 if vehicle337.present? and product337.present?
product338 = Refinery::Products::Product.create!(product_no:'SS001', name:'Rodeo RA 2002+ Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Rodeo RA 2002+ Steel Side Steps'.blank?
category338 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product338.categories << category338 if category338.present? and product338.present?
vehicle338 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product338.vehicles << vehicle338 if vehicle338.present? and product338.present?
product339 = Refinery::Products::Product.create!(product_no:'SS001', name:'Rodeo RA7 2002+ Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Rodeo RA7 2002+ Steel Side Steps'.blank?
category339 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product339.categories << category339 if category339.present? and product339.present?
vehicle339 = Refinery::Products::Vehicle.find_by_name('RA7 2003-2008')
product339.vehicles << vehicle339 if vehicle339.present? and product339.present?
product340 = Refinery::Products::Product.create!(product_no:'SS001', name:'Colorado 2008-2012 Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Colorado 2008-2012 Steel Side Steps'.blank?
category340 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product340.categories << category340 if category340.present? and product340.present?
vehicle340 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product340.vehicles << vehicle340 if vehicle340.present? and product340.present?
product341 = Refinery::Products::Product.create!(product_no:'SS001', name:'D-Max 2002+ Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'D-Max 2002+ Steel Side Steps'.blank?
category341 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product341.categories << category341 if category341.present? and product341.present?
vehicle341 = Refinery::Products::Vehicle.find_by_name('2002+')
product341.vehicles << vehicle341 if vehicle341.present? and product341.present?
product342 = Refinery::Products::Product.create!(product_no:'SS004', name:'Triton ML Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Triton ML Steel Side Steps'.blank?
category342 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product342.categories << category342 if category342.present? and product342.present?
vehicle342 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product342.vehicles << vehicle342 if vehicle342.present? and product342.present?
product343 = Refinery::Products::Product.create!(product_no:'SS004', name:'Triton MN Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Triton MN Steel Side Steps'.blank?
category343 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product343.categories << category343 if category343.present? and product343.present?
vehicle343 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product343.vehicles << vehicle343 if vehicle343.present? and product343.present?
product344 = Refinery::Products::Product.create!(product_no:'SS006', name:'Toyota Hilux 2005+ Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Toyota Hilux 2005+ Steel Side Steps'.blank?
category344 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product344.categories << category344 if category344.present? and product344.present?
vehicle344 = Refinery::Products::Vehicle.find_by_name('2005+')
product344.vehicles << vehicle344 if vehicle344.present? and product344.present?
product345 = Refinery::Products::Product.create!(product_no:'SS007', name:'Nissan Navara D40 (Only Fits Thailand Build Dual Cab Models) Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Nissan Navara D40  (Only Fits Thailand Build Dual Cab Models) Steel Side Steps'.blank?
category345 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product345.categories << category345 if category345.present? and product345.present?
vehicle345 = Refinery::Products::Vehicle.find_by_name('D40')
product345.vehicles << vehicle345 if vehicle345.present? and product345.present?
product346 = Refinery::Products::Product.create!(product_no:'SS008', name:'Ranger PJ-PK Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Ranger PJ-PK Steel Side Steps'.blank?
category346 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product346.categories << category346 if category346.present? and product346.present?
vehicle346 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product346.vehicles << vehicle346 if vehicle346.present? and product346.present?
product347 = Refinery::Products::Product.create!(product_no:'SS009', name:'Mazda BT50 Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Mazda BT50 Steel Side Steps'.blank?
category347 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product347.categories << category347 if category347.present? and product347.present?
vehicle347 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product347.vehicles << vehicle347 if vehicle347.present? and product347.present?
product348 = Refinery::Products::Product.create!(product_no:'SS012', name:'Patrol GU 1998-2004 Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Patrol GU 1998-2004 Steel Side Steps'.blank?
category348 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product348.categories << category348 if category348.present? and product348.present?
vehicle348 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product348.vehicles << vehicle348 if vehicle348.present? and product348.present?
product349 = Refinery::Products::Product.create!(product_no:'SS012', name:'Patrol GU 2005+ Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Patrol GU 2005+ Steel Side Steps'.blank?
category349 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product349.categories << category349 if category349.present? and product349.present?
vehicle349 = Refinery::Products::Vehicle.find_by_name('GU S4 2005+')
product349.vehicles << vehicle349 if vehicle349.present? and product349.present?
product350 = Refinery::Products::Product.create!(product_no:'SS013', name:'Landcruiser 80 Series Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 80 Series Steel Side Steps'.blank?
category350 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product350.categories << category350 if category350.present? and product350.present?
vehicle350 = Refinery::Products::Vehicle.find_by_name('80 Series')
product350.vehicles << vehicle350 if vehicle350.present? and product350.present?
product351 = Refinery::Products::Product.create!(product_no:'SS014', name:'Landcruiser 100 Series Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 100 Series Steel Side Steps'.blank?
category351 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product351.categories << category351 if category351.present? and product351.present?
vehicle351 = Refinery::Products::Vehicle.find_by_name('100 Series')
product351.vehicles << vehicle351 if vehicle351.present? and product351.present?
product352 = Refinery::Products::Product.create!(product_no:'SS015', name:'Landcruiser 76 Series Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 76 Series Steel Side Steps'.blank?
category352 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product352.categories << category352 if category352.present? and product352.present?
vehicle352 = Refinery::Products::Vehicle.find_by_name('76 Series')
product352.vehicles << vehicle352 if vehicle352.present? and product352.present?
product353 = Refinery::Products::Product.create!(product_no:'SS016', name:'Landcruiser 79 Series Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 79 Series Steel Side Steps'.blank?
category353 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product353.categories << category353 if category353.present? and product353.present?
vehicle353 = Refinery::Products::Vehicle.find_by_name('79 Series')
product353.vehicles << vehicle353 if vehicle353.present? and product353.present?
product354 = Refinery::Products::Product.create!(product_no:'SS017', name:'Prado 120 Series Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Prado 120 Series Steel Side Steps'.blank?
category354 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product354.categories << category354 if category354.present? and product354.present?
vehicle354 = Refinery::Products::Vehicle.find_by_name('120 Series')
product354.vehicles << vehicle354 if vehicle354.present? and product354.present?
product355 = Refinery::Products::Product.create!(product_no:'SS018', name:'Fortuner Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Fortuner Steel Side Steps'.blank?
category355 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product355.categories << category355 if category355.present? and product355.present?
vehicle355 = Refinery::Products::Vehicle.find_by_name('2009+')
product355.vehicles << vehicle355 if vehicle355.present? and product355.present?
product356 = Refinery::Products::Product.create!(product_no:'SS021', name:'Wrangler JK Steel Side Steps', description:'Ironman 4x4 Side Steps are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Wrangler JK Steel Side Steps'.blank?
category356 = Refinery::Products::Category.find_by_name('Steel Side Steps')
product356.categories << category356 if category356.present? and product356.present?
vehicle356 = Refinery::Products::Vehicle.find_by_name('JK')
product356.vehicles << vehicle356 if vehicle356.present? and product356.present?
product357 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category357 = Refinery::Products::Category.find_by_name('')
product357.categories << category357 if category357.present? and product357.present?
vehicle357 = Refinery::Products::Vehicle.find_by_name('')
product357.vehicles << vehicle357 if vehicle357.present? and product357.present?
product358 = Refinery::Products::Product.create!(product_no:'SSR001', name:'Hilux 2005+ Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Hilux 2005+ Steel Side Steps & Scrub Rails'.blank?
category358 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product358.categories << category358 if category358.present? and product358.present?
vehicle358 = Refinery::Products::Vehicle.find_by_name('2005+')
product358.vehicles << vehicle358 if vehicle358.present? and product358.present?
product359 = Refinery::Products::Product.create!(product_no:'SSR002', name:'Ranger PJ-PK Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Ranger PJ-PK Steel Side Steps & Scrub Rails'.blank?
category359 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product359.categories << category359 if category359.present? and product359.present?
vehicle359 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product359.vehicles << vehicle359 if vehicle359.present? and product359.present?
product360 = Refinery::Products::Product.create!(product_no:'SSR003', name:'Navara D40 Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Navara D40 Steel Side Steps & Scrub Rails'.blank?
category360 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product360.categories << category360 if category360.present? and product360.present?
vehicle360 = Refinery::Products::Vehicle.find_by_name('D40')
product360.vehicles << vehicle360 if vehicle360.present? and product360.present?
product361 = Refinery::Products::Product.create!(product_no:'SSR004', name:'Prado 120 Series Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Prado 120 Series Steel Side Steps & Scrub Rails'.blank?
category361 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product361.categories << category361 if category361.present? and product361.present?
vehicle361 = Refinery::Products::Vehicle.find_by_name('120 Series')
product361.vehicles << vehicle361 if vehicle361.present? and product361.present?
product362 = Refinery::Products::Product.create!(product_no:'SSR005', name:'Triton ML Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Triton ML Steel Side Steps & Scrub Rails'.blank?
category362 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product362.categories << category362 if category362.present? and product362.present?
vehicle362 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product362.vehicles << vehicle362 if vehicle362.present? and product362.present?
product363 = Refinery::Products::Product.create!(product_no:'SSR005', name:'Triton MN Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Triton MN Steel Side Steps & Scrub Rails'.blank?
category363 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product363.categories << category363 if category363.present? and product363.present?
vehicle363 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product363.vehicles << vehicle363 if vehicle363.present? and product363.present?
product364 = Refinery::Products::Product.create!(product_no:'SSR006', name:'Rodeo RA Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Rodeo RA Steel Side Steps & Scrub Rails'.blank?
category364 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product364.categories << category364 if category364.present? and product364.present?
vehicle364 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product364.vehicles << vehicle364 if vehicle364.present? and product364.present?
product365 = Refinery::Products::Product.create!(product_no:'SSR006', name:'Rodeo RA7 Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Rodeo RA7 Steel Side Steps & Scrub Rails'.blank?
category365 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product365.categories << category365 if category365.present? and product365.present?
vehicle365 = Refinery::Products::Vehicle.find_by_name('RA7 2003-2008')
product365.vehicles << vehicle365 if vehicle365.present? and product365.present?
product366 = Refinery::Products::Product.create!(product_no:'SSR006', name:'Colorado 2008-2012 Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Colorado 2008-2012 Steel Side Steps & Scrub Rails'.blank?
category366 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product366.categories << category366 if category366.present? and product366.present?
vehicle366 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product366.vehicles << vehicle366 if vehicle366.present? and product366.present?
product367 = Refinery::Products::Product.create!(product_no:'SSR006', name:'D-Max 2007+ Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'D-Max 2007+ Steel Side Steps & Scrub Rails'.blank?
category367 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product367.categories << category367 if category367.present? and product367.present?
vehicle367 = Refinery::Products::Vehicle.find_by_name('2007+')
product367.vehicles << vehicle367 if vehicle367.present? and product367.present?
product368 = Refinery::Products::Product.create!(product_no:'SSR007', name:'Mazda BT50 Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Mazda BT50 Steel Side Steps & Scrub Rails'.blank?
category368 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product368.categories << category368 if category368.present? and product368.present?
vehicle368 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product368.vehicles << vehicle368 if vehicle368.present? and product368.present?
product369 = Refinery::Products::Product.create!(product_no:'SSR012', name:'Patrol GU 1998-2004 Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Patrol GU 1998-2004 Steel Side Steps & Scrub Rails'.blank?
category369 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product369.categories << category369 if category369.present? and product369.present?
vehicle369 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product369.vehicles << vehicle369 if vehicle369.present? and product369.present?
product370 = Refinery::Products::Product.create!(product_no:'SSR012', name:'Patrol GU 2005+ Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Patrol GU 2005+ Steel Side Steps & Scrub Rails'.blank?
category370 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product370.categories << category370 if category370.present? and product370.present?
vehicle370 = Refinery::Products::Vehicle.find_by_name('GU S4 2005+')
product370.vehicles << vehicle370 if vehicle370.present? and product370.present?
product371 = Refinery::Products::Product.create!(product_no:'SSR013', name:'Landcruiser 80 Series Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 80 Series Steel Side Steps & Scrub Rails'.blank?
category371 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product371.categories << category371 if category371.present? and product371.present?
vehicle371 = Refinery::Products::Vehicle.find_by_name('80 Series')
product371.vehicles << vehicle371 if vehicle371.present? and product371.present?
product372 = Refinery::Products::Product.create!(product_no:'SSR014', name:'Landcruiser 100 Series Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 100 Series Steel Side Steps & Scrub Rails'.blank?
category372 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product372.categories << category372 if category372.present? and product372.present?
vehicle372 = Refinery::Products::Vehicle.find_by_name('100 Series')
product372.vehicles << vehicle372 if vehicle372.present? and product372.present?
product373 = Refinery::Products::Product.create!(product_no:'SSR015', name:'Landcruiser 76 Series Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 76 Series Steel Side Steps & Scrub Rails'.blank?
category373 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product373.categories << category373 if category373.present? and product373.present?
vehicle373 = Refinery::Products::Vehicle.find_by_name('76 Series')
product373.vehicles << vehicle373 if vehicle373.present? and product373.present?
product374 = Refinery::Products::Product.create!(product_no:'SSR016', name:'Landcruiser 79 Series Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Landcruiser 79 Series Steel Side Steps & Scrub Rails'.blank?
category374 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product374.categories << category374 if category374.present? and product374.present?
vehicle374 = Refinery::Products::Vehicle.find_by_name('79 Series')
product374.vehicles << vehicle374 if vehicle374.present? and product374.present?
product375 = Refinery::Products::Product.create!(product_no:'SSR018', name:'Fortuner Steel Side Steps & Scrub Rails', description:'Ironman 4x4 Side Steps and scrub rails are made from high quality steel, powdercoated for longevity and chassis mounted for strength. Designed to protect your vehicle from damage offroad and providing a convenient step into lifted 4WD\'s.', notes:nil) if not 'Fortuner Steel Side Steps & Scrub Rails'.blank?
category375 = Refinery::Products::Category.find_by_name('Steel Side Steps & Scrub Rails')
product375.categories << category375 if category375.present? and product375.present?
vehicle375 = Refinery::Products::Vehicle.find_by_name('2009+')
product375.vehicles << vehicle375 if vehicle375.present? and product375.present?
product376 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category376 = Refinery::Products::Category.find_by_name('')
product376.categories << category376 if category376.present? and product376.present?
vehicle376 = Refinery::Products::Vehicle.find_by_name('')
product376.vehicles << vehicle376 if vehicle376.present? and product376.present?
product377 = Refinery::Products::Product.create!(product_no:'IRRCAGE18', name:'Roof Rack 1.8m x 1.25m Cage Style', description:'The ¾ Steel Cage Roof Rack is great for those need a strong rack, but don\'t have the space to fit a full length roof rack. Perfect for the average 4x4 vehicles and utes.', notes:nil) if not 'Roof Rack 1.8m x 1.25m Cage Style'.blank?
category377 = Refinery::Products::Category.find_by_name('Cage Style')
product377.categories << category377 if category377.present? and product377.present?
vehicle377 = Refinery::Products::Vehicle.find_by_name('')
product377.vehicles << vehicle377 if vehicle377.present? and product377.present?
product378 = Refinery::Products::Product.create!(product_no:'IRRCAGE22', name:'Roof Rack 2.2m x 1.25m Cage Style', description:'The Full length Steel Cage Roof Rack is great for those need a strong rack to match the length of a full size 4x4. Perfect for the large 4x4s a full length cage rack allows you to maximise storage space on the roof of the vehicle.', notes:nil) if not 'Roof Rack 2.2m x 1.25m Cage Style'.blank?
category378 = Refinery::Products::Category.find_by_name('Cage Style')
product378.categories << category378 if category378.present? and product378.present?
vehicle378 = Refinery::Products::Vehicle.find_by_name('')
product378.vehicles << vehicle378 if vehicle378.present? and product378.present?
product379 = Refinery::Products::Product.create!(product_no:'IRRTENT18', name:'Roof Rack 1.8m x 1.25m Rooftop Tent Compatible', description:'The ¾ Steel Roof Top Tent Rack is great for those need a strong rack, but don\'t have the space to fit a full length roof rack. Perfect for the average 4x4 vehicles and utes.', notes:nil) if not 'Roof Rack 1.8m x 1.25m Rooftop Tent Compatible'.blank?
category379 = Refinery::Products::Category.find_by_name('Roof Top Tent Compatible')
product379.categories << category379 if category379.present? and product379.present?
vehicle379 = Refinery::Products::Vehicle.find_by_name('')
product379.vehicles << vehicle379 if vehicle379.present? and product379.present?
product380 = Refinery::Products::Product.create!(product_no:'IRRTENT22', name:'Roof Rack 2.2m x 1.25m Rooftop Tent Compatible', description:'The Full length Steel Roof Top Tent Rack is great for those need a strong rack to match the length of a full size 4x4. Perfect for the large 4x4s a full length cage rack allows you to maximise storage space on the roof of the vehicle and the space to mount a roof top tent.', notes:nil) if not 'Roof Rack 2.2m x 1.25m Rooftop Tent Compatible'.blank?
category380 = Refinery::Products::Category.find_by_name('Roof Top Tent Compatible')
product380.categories << category380 if category380.present? and product380.present?
vehicle380 = Refinery::Products::Vehicle.find_by_name('')
product380.vehicles << vehicle380 if vehicle380.present? and product380.present?
product381 = Refinery::Products::Product.create!(product_no:'IRRTRADE18', name:'Roof Rack 1.8m x 1.25m Trade Style- Open End', description:'For those who require a tough durable rack which could hold virtually anything from canoes to long ladders then the Ironman 4x4 ¾ tradesman style rack is right roof rack. The Tradesman Rack is a full size rack that can cater for all occasions from work to leisure.', notes:nil) if not 'Roof Rack 1.8m x 1.25m Trade Style- Open End'.blank?
category381 = Refinery::Products::Category.find_by_name('Trade Style')
product381.categories << category381 if category381.present? and product381.present?
vehicle381 = Refinery::Products::Vehicle.find_by_name('')
product381.vehicles << vehicle381 if vehicle381.present? and product381.present?
product382 = Refinery::Products::Product.create!(product_no:'IRRTRADE22', name:'Roof Rack 2.2m x 1.25m Trade Style- Open End', description:'For those who require a tough durable rack which could hold virtually anything from canoes to long ladders then the Ironman 4x4 Full Length Tradesman style rack is right roof rack. The Tradesman Rack is a full size rack that can cater for all occasions from work to leisure.', notes:nil) if not 'Roof Rack 2.2m x 1.25m Trade Style- Open End'.blank?
category382 = Refinery::Products::Category.find_by_name('Trade Style')
product382.categories << category382 if category382.present? and product382.present?
vehicle382 = Refinery::Products::Vehicle.find_by_name('')
product382.vehicles << vehicle382 if vehicle382.present? and product382.present?
product383 = Refinery::Products::Product.create!(product_no:'IRRALLOYCAGE18', name:'Roof Rack 1.8m x 1.25m Alloy Cage Style (No Mesh)', description:'The ¾ alloy Cage Roof Rack is great for those need a strong, light rack, but don\'t have the space to fit a full length roof rack. Perfect for the average 4x4 vehicles and utes looking to maximise storage with the minimum of extra weight', notes:nil) if not 'Roof Rack 1.8m x 1.25m Alloy Cage Style (No Mesh)'.blank?
category383 = Refinery::Products::Category.find_by_name('Cage Style')
product383.categories << category383 if category383.present? and product383.present?
vehicle383 = Refinery::Products::Vehicle.find_by_name('')
product383.vehicles << vehicle383 if vehicle383.present? and product383.present?
product384 = Refinery::Products::Product.create!(product_no:'IRRALLOYCAGE22', name:'Roof Rack 2.2m x 1.25m Alloy Cage Style (No Mesh)', description:'The Full length Alloy Cage Roof Rack is great for those need a lightweight, strong rack to match the length of a full size 4x4. Perfect for the large 4x4s a full length alloy cage rack allows you to maximise storage space on the roof of the vehicle whilst minimising the extra weight being loaded on up top.', notes:nil) if not 'Roof Rack 2.2m x 1.25m Alloy Cage Style (No Mesh)'.blank?
category384 = Refinery::Products::Category.find_by_name('Cage Style')
product384.categories << category384 if category384.present? and product384.present?
vehicle384 = Refinery::Products::Vehicle.find_by_name('')
product384.vehicles << vehicle384 if vehicle384.present? and product384.present?
product385 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category385 = Refinery::Products::Category.find_by_name('')
product385.categories << category385 if category385.present? and product385.present?
vehicle385 = Refinery::Products::Vehicle.find_by_name('')
product385.vehicles << vehicle385 if vehicle385.present? and product385.present?
product386 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Landcruiser 60 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 60 Series Roof Rack Mounting Kit'.blank?
category386 = Refinery::Products::Category.find_by_name('Mounting Kits')
product386.categories << category386 if category386.present? and product386.present?
vehicle386 = Refinery::Products::Vehicle.find_by_name('60 Series')
product386.vehicles << vehicle386 if vehicle386.present? and product386.present?
product387 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Landcruiser 76 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 76 Series Roof Rack Mounting Kit'.blank?
category387 = Refinery::Products::Category.find_by_name('Mounting Kits')
product387.categories << category387 if category387.present? and product387.present?
vehicle387 = Refinery::Products::Vehicle.find_by_name('76 Series')
product387.vehicles << vehicle387 if vehicle387.present? and product387.present?
product388 = Refinery::Products::Product.create!(product_no:'IRRFEET210', name:'Landcruiser 78 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 78 Series Roof Rack Mounting Kit'.blank?
category388 = Refinery::Products::Category.find_by_name('Mounting Kits')
product388.categories << category388 if category388.present? and product388.present?
vehicle388 = Refinery::Products::Vehicle.find_by_name('78 Series')
product388.vehicles << vehicle388 if vehicle388.present? and product388.present?
product389 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Landcruiser 80 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 80 Series Roof Rack Mounting Kit'.blank?
category389 = Refinery::Products::Category.find_by_name('Mounting Kits')
product389.categories << category389 if category389.present? and product389.present?
vehicle389 = Refinery::Products::Vehicle.find_by_name('80 Series')
product389.vehicles << vehicle389 if vehicle389.present? and product389.present?
product390 = Refinery::Products::Product.create!(product_no:'IRRFEETLC100', name:'Landcruiser 100 Series IFS Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 100 Series IFS Roof Rack Mounting Kit'.blank?
category390 = Refinery::Products::Category.find_by_name('Mounting Kits')
product390.categories << category390 if category390.present? and product390.present?
vehicle390 = Refinery::Products::Vehicle.find_by_name('100 Series')
product390.vehicles << vehicle390 if vehicle390.present? and product390.present?
product391 = Refinery::Products::Product.create!(product_no:'IRRFEETLC100', name:'Landcruiser 105 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 105 Series Roof Rack Mounting Kit'.blank?
category391 = Refinery::Products::Category.find_by_name('Mounting Kits')
product391.categories << category391 if category391.present? and product391.present?
vehicle391 = Refinery::Products::Vehicle.find_by_name('105 Series')
product391.vehicles << vehicle391 if vehicle391.present? and product391.present?
product392 = Refinery::Products::Product.create!(product_no:'IRRFEETLC200', name:'Prado 150 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Prado 150 Series Roof Rack Mounting Kit'.blank?
category392 = Refinery::Products::Category.find_by_name('Mounting Kits')
product392.categories << category392 if category392.present? and product392.present?
vehicle392 = Refinery::Products::Vehicle.find_by_name('150 Series')
product392.vehicles << vehicle392 if vehicle392.present? and product392.present?
product393 = Refinery::Products::Product.create!(product_no:'IRRFEETLC200', name:'Landcruiser 200 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 200 Series Roof Rack Mounting Kit'.blank?
category393 = Refinery::Products::Category.find_by_name('Mounting Kits')
product393.categories << category393 if category393.present? and product393.present?
vehicle393 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product393.vehicles << vehicle393 if vehicle393.present? and product393.present?
product394 = Refinery::Products::Product.create!(product_no:'IRRFEETLC200', name:'Landcruiser 200 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Landcruiser 200 Series Roof Rack Mounting Kit'.blank?
category394 = Refinery::Products::Category.find_by_name('Mounting Kits')
product394.categories << category394 if category394.present? and product394.present?
vehicle394 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product394.vehicles << vehicle394 if vehicle394.present? and product394.present?
product395 = Refinery::Products::Product.create!(product_no:'IRRFEETLC200', name:'Prado 120 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Prado 120 Series Roof Rack Mounting Kit'.blank?
category395 = Refinery::Products::Category.find_by_name('Mounting Kits')
product395.categories << category395 if category395.present? and product395.present?
vehicle395 = Refinery::Products::Vehicle.find_by_name('120 Series')
product395.vehicles << vehicle395 if vehicle395.present? and product395.present?
product396 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Prado 90/95 Series Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Prado 90/95 Series Roof Rack Mounting Kit'.blank?
category396 = Refinery::Products::Category.find_by_name('Mounting Kits')
product396.categories << category396 if category396.present? and product396.present?
vehicle396 = Refinery::Products::Vehicle.find_by_name('90 Series')
product396.vehicles << vehicle396 if vehicle396.present? and product396.present?
product397 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Patrol GU Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Patrol GU Roof Rack Mounting Kit'.blank?
category397 = Refinery::Products::Category.find_by_name('Mounting Kits')
product397.categories << category397 if category397.present? and product397.present?
vehicle397 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product397.vehicles << vehicle397 if vehicle397.present? and product397.present?
product398 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Patrol GU Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Patrol GU Roof Rack Mounting Kit'.blank?
category398 = Refinery::Products::Category.find_by_name('Mounting Kits')
product398.categories << category398 if category398.present? and product398.present?
vehicle398 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product398.vehicles << vehicle398 if vehicle398.present? and product398.present?
product399 = Refinery::Products::Product.create!(product_no:'IRRFEET125', name:'Patrol GQ Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Patrol GQ Roof Rack Mounting Kit'.blank?
category399 = Refinery::Products::Category.find_by_name('Mounting Kits')
product399.categories << category399 if category399.present? and product399.present?
vehicle399 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product399.vehicles << vehicle399 if vehicle399.present? and product399.present?
product400 = Refinery::Products::Product.create!(product_no:'IRRFEET210', name:'Patrol GQ (Safari/High Roof) Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Patrol GQ (Safari/High Roof) Roof Rack Mounting Kit'.blank?
category400 = Refinery::Products::Category.find_by_name('Mounting Kits')
product400.categories << category400 if category400.present? and product400.present?
vehicle400 = Refinery::Products::Vehicle.find_by_name('GQ 1988-1997')
product400.vehicles << vehicle400 if vehicle400.present? and product400.present?
product401 = Refinery::Products::Product.create!(product_no:'IRRFEET210', name:'Defender Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'Defender Roof Rack Mounting Kit'.blank?
category401 = Refinery::Products::Category.find_by_name('Mounting Kits')
product401.categories << category401 if category401.present? and product401.present?
vehicle401 = Refinery::Products::Vehicle.find_by_name('Defender')
product401.vehicles << vehicle401 if vehicle401.present? and product401.present?
product402 = Refinery::Products::Product.create!(product_no:'IRRFEET150', name:'G-Wagen Roof Rack Mounting Kit', description:'This mounting kits is used in conjuntion with any of the Ironman 4x4 roof racks to mount the roof racks on the vehicle.', notes:nil) if not 'G-Wagen Roof Rack Mounting Kit'.blank?
category402 = Refinery::Products::Category.find_by_name('Mounting Kits')
product402.categories << category402 if category402.present? and product402.present?
vehicle402 = Refinery::Products::Vehicle.find_by_name('G-Wagen')
product402.vehicles << vehicle402 if vehicle402.present? and product402.present?
product403 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category403 = Refinery::Products::Category.find_by_name('')
product403.categories << category403 if category403.present? and product403.present?
vehicle403 = Refinery::Products::Vehicle.find_by_name('')
product403.vehicles << vehicle403 if vehicle403.present? and product403.present?
product404 = Refinery::Products::Product.create!(product_no:'RSB001', name:'Ranger PJ-PK Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Ranger PJ-PK Rear Sports Bar'.blank?
category404 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product404.categories << category404 if category404.present? and product404.present?
vehicle404 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product404.vehicles << vehicle404 if vehicle404.present? and product404.present?
product405 = Refinery::Products::Product.create!(product_no:'RSB001', name:'Ranger PX Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Ranger PX Rear Sports Bar'.blank?
category405 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product405.categories << category405 if category405.present? and product405.present?
vehicle405 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product405.vehicles << vehicle405 if vehicle405.present? and product405.present?
product406 = Refinery::Products::Product.create!(product_no:'RSB002', name:'Triton ML Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Triton ML Rear Sports Bar'.blank?
category406 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product406.categories << category406 if category406.present? and product406.present?
vehicle406 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product406.vehicles << vehicle406 if vehicle406.present? and product406.present?
product407 = Refinery::Products::Product.create!(product_no:'RSB002', name:'Triton MN Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Triton MN Rear Sports Bar'.blank?
category407 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product407.categories << category407 if category407.present? and product407.present?
vehicle407 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product407.vehicles << vehicle407 if vehicle407.present? and product407.present?
product408 = Refinery::Products::Product.create!(product_no:'RSB003', name:'Hilux / Vigo 2005+ Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Hilux / Vigo 2005+ Rear Sports Bar'.blank?
category408 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product408.categories << category408 if category408.present? and product408.present?
vehicle408 = Refinery::Products::Vehicle.find_by_name('2005+')
product408.vehicles << vehicle408 if vehicle408.present? and product408.present?
product409 = Refinery::Products::Product.create!(product_no:'RSB004', name:'Colorado 2012+ Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Colorado 2012+ Rear Sports Bar'.blank?
category409 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product409.categories << category409 if category409.present? and product409.present?
vehicle409 = Refinery::Products::Vehicle.find_by_name('RG 2012+')
product409.vehicles << vehicle409 if vehicle409.present? and product409.present?
product410 = Refinery::Products::Product.create!(product_no:'RSB005', name:'D-Max 2012+ Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'D-Max 2012+ Rear Sports Bar'.blank?
category410 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product410.categories << category410 if category410.present? and product410.present?
vehicle410 = Refinery::Products::Vehicle.find_by_name('2012+')
product410.vehicles << vehicle410 if vehicle410.present? and product410.present?
product411 = Refinery::Products::Product.create!(product_no:'RSB006', name:'Mazda BT50 2012+ Rear Sports Bar', description:'Enhance the appearance of your ute with our range of highly polished stainless steel Sports Bars. These sporty and stylish Sports Bars provide a great bit of added functionality to a ute tray.', notes:nil) if not 'Mazda BT50 2012+ Rear Sports Bar'.blank?
category411 = Refinery::Products::Category.find_by_name('Rear Sports Bars')
product411.categories << category411 if category411.present? and product411.present?
vehicle411 = Refinery::Products::Vehicle.find_by_name('2012+')
product411.vehicles << vehicle411 if vehicle411.present? and product411.present?
product412 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category412 = Refinery::Products::Category.find_by_name('')
product412.categories << category412 if category412.present? and product412.present?
vehicle412 = Refinery::Products::Vehicle.find_by_name('')
product412.vehicles << vehicle412 if vehicle412.present? and product412.present?
product413 = Refinery::Products::Product.create!(product_no:'TANK001', name:'Landcruiser 76 Series 160L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:nil) if not 'Landcruiser 76 Series 160L Long Range Fuel Tank'.blank?
category413 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product413.categories << category413 if category413.present? and product413.present?
vehicle413 = Refinery::Products::Vehicle.find_by_name('76 Series')
product413.vehicles << vehicle413 if vehicle413.present? and product413.present?
product414 = Refinery::Products::Product.create!(product_no:'TANK002', name:'Hilux 2005+ 145L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:nil) if not 'Hilux 2005+ 145L Long Range Fuel Tank'.blank?
category414 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product414.categories << category414 if category414.present? and product414.present?
vehicle414 = Refinery::Products::Vehicle.find_by_name('2005+')
product414.vehicles << vehicle414 if vehicle414.present? and product414.present?
product415 = Refinery::Products::Product.create!(product_no:'TANK003', name:'Navara D40 145L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'(Spain Build Diesel Only)') if not 'Navara D40 145L Long Range Fuel Tank'.blank?
category415 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product415.categories << category415 if category415.present? and product415.present?
vehicle415 = Refinery::Products::Vehicle.find_by_name('D40')
product415.vehicles << vehicle415 if vehicle415.present? and product415.present?
product416 = Refinery::Products::Product.create!(product_no:'TANK004', name:'Triton ML Diesel 125L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'Suit L200 Diesel (Not compatible with factory diff lock)') if not 'Triton ML Diesel 125L Long Range Fuel Tank'.blank?
category416 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product416.categories << category416 if category416.present? and product416.present?
vehicle416 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product416.vehicles << vehicle416 if vehicle416.present? and product416.present?
product417 = Refinery::Products::Product.create!(product_no:'TANK004', name:'Triton MN Diesel 125L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'Suits Diesel (Not compatible with factory diff lock)') if not 'Triton MN Diesel 125L Long Range Fuel Tank'.blank?
category417 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product417.categories << category417 if category417.present? and product417.present?
vehicle417 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product417.vehicles << vehicle417 if vehicle417.present? and product417.present?
product418 = Refinery::Products::Product.create!(product_no:'TANK005', name:'Triton ML Petrol 125L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'Suits Petrol (Not compatible with factory diff lock)') if not 'Triton ML Petrol 125L Long Range Fuel Tank'.blank?
category418 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product418.categories << category418 if category418.present? and product418.present?
vehicle418 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product418.vehicles << vehicle418 if vehicle418.present? and product418.present?
product419 = Refinery::Products::Product.create!(product_no:'TANK005', name:'Triton MN Petrol 125L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'Suits Petrol (Not compatible with factory diff lock)') if not 'Triton MN Petrol 125L Long Range Fuel Tank'.blank?
category419 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product419.categories << category419 if category419.present? and product419.present?
vehicle419 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product419.vehicles << vehicle419 if vehicle419.present? and product419.present?
product420 = Refinery::Products::Product.create!(product_no:'TANK006', name:'Ranger PJ-PK 122L Long Range Fuel Tank', description:'Ironman 4x4\'s long range fuel tank range is an engineered solution for being able to travel further with less fuel stops. They are designed to give maximum fuel capacity without affecting ground clearance and ramp over/departure angle, whilst being exceptionally strong against the most rigorous of conditions.', notes:'(Dual & Single Cab only)') if not 'Ranger PJ-PK 122L Long Range Fuel Tank'.blank?
category420 = Refinery::Products::Category.find_by_name('Long Range Fuel Tanks')
product420.categories << category420 if category420.present? and product420.present?
vehicle420 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product420.vehicles << vehicle420 if vehicle420.present? and product420.present?
product421 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category421 = Refinery::Products::Category.find_by_name('')
product421.categories << category421 if category421.present? and product421.present?
vehicle421 = Refinery::Products::Vehicle.find_by_name('')
product421.vehicles << vehicle421 if vehicle421.present? and product421.present?
product422 = Refinery::Products::Product.create!(product_no:'IUP001K', name:'Hilux 2005+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Hilux 2005+ Underbody Protection'.blank?
category422 = Refinery::Products::Category.find_by_name('Underbody Protection')
product422.categories << category422 if category422.present? and product422.present?
vehicle422 = Refinery::Products::Vehicle.find_by_name('2005+')
product422.vehicles << vehicle422 if vehicle422.present? and product422.present?
product423 = Refinery::Products::Product.create!(product_no:'IUP002K', name:'Prado 120 Series Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Prado 120 Series Underbody Protection'.blank?
category423 = Refinery::Products::Category.find_by_name('Underbody Protection')
product423.categories << category423 if category423.present? and product423.present?
vehicle423 = Refinery::Products::Vehicle.find_by_name('120 Series')
product423.vehicles << vehicle423 if vehicle423.present? and product423.present?
product424 = Refinery::Products::Product.create!(product_no:'IUP003K', name:'Prado 150 Series Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Prado 150 Series Underbody Protection'.blank?
category424 = Refinery::Products::Category.find_by_name('Underbody Protection')
product424.categories << category424 if category424.present? and product424.present?
vehicle424 = Refinery::Products::Vehicle.find_by_name('150 Series')
product424.vehicles << vehicle424 if vehicle424.present? and product424.present?
product425 = Refinery::Products::Product.create!(product_no:'IUP003K', name:'FJ Cruiser Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'FJ Cruiser Underbody Protection'.blank?
category425 = Refinery::Products::Category.find_by_name('Underbody Protection')
product425.categories << category425 if category425.present? and product425.present?
vehicle425 = Refinery::Products::Vehicle.find_by_name('2006+')
product425.vehicles << vehicle425 if vehicle425.present? and product425.present?
product426 = Refinery::Products::Product.create!(product_no:'IUP004K', name:'Landcruiser 200 Series Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Landcruiser 200 Series Underbody Protection'.blank?
category426 = Refinery::Products::Category.find_by_name('Underbody Protection')
product426.categories << category426 if category426.present? and product426.present?
vehicle426 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product426.vehicles << vehicle426 if vehicle426.present? and product426.present?
product427 = Refinery::Products::Product.create!(product_no:'IUP004K', name:'Landcruiser 200 Series Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Landcruiser 200 Series Underbody Protection'.blank?
category427 = Refinery::Products::Category.find_by_name('Underbody Protection')
product427.categories << category427 if category427.present? and product427.present?
vehicle427 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product427.vehicles << vehicle427 if vehicle427.present? and product427.present?
product428 = Refinery::Products::Product.create!(product_no:'IUP006K', name:'Navara D22 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Navara D22 Underbody Protection'.blank?
category428 = Refinery::Products::Category.find_by_name('Underbody Protection')
product428.categories << category428 if category428.present? and product428.present?
vehicle428 = Refinery::Products::Vehicle.find_by_name('D22')
product428.vehicles << vehicle428 if vehicle428.present? and product428.present?
product429 = Refinery::Products::Product.create!(product_no:'IUP007K', name:'Navara D40 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Navara D40 Underbody Protection'.blank?
category429 = Refinery::Products::Category.find_by_name('Underbody Protection')
product429.categories << category429 if category429.present? and product429.present?
vehicle429 = Refinery::Products::Vehicle.find_by_name('D40')
product429.vehicles << vehicle429 if vehicle429.present? and product429.present?
product430 = Refinery::Products::Product.create!(product_no:'IUP008K', name:'Ranger PJ-PK Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Ranger PJ-PK Underbody Protection'.blank?
category430 = Refinery::Products::Category.find_by_name('Underbody Protection')
product430.categories << category430 if category430.present? and product430.present?
vehicle430 = Refinery::Products::Vehicle.find_by_name('PJ-PK 2007-2011')
product430.vehicles << vehicle430 if vehicle430.present? and product430.present?
product431 = Refinery::Products::Product.create!(product_no:'IUP008K', name:'BT50 07-11 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'BT50 07-11  Underbody Protection'.blank?
category431 = Refinery::Products::Category.find_by_name('Underbody Protection')
product431.categories << category431 if category431.present? and product431.present?
vehicle431 = Refinery::Products::Vehicle.find_by_name('2006-2011')
product431.vehicles << vehicle431 if vehicle431.present? and product431.present?
product432 = Refinery::Products::Product.create!(product_no:'IUP009K', name:'Colorado 2008-2012 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Colorado 2008-2012 Underbody Protection'.blank?
category432 = Refinery::Products::Category.find_by_name('Underbody Protection')
product432.categories << category432 if category432.present? and product432.present?
vehicle432 = Refinery::Products::Vehicle.find_by_name('RC 2008-2012')
product432.vehicles << vehicle432 if vehicle432.present? and product432.present?
product433 = Refinery::Products::Product.create!(product_no:'IUP009K', name:'Rodeo Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Rodeo  Underbody Protection'.blank?
category433 = Refinery::Products::Category.find_by_name('Underbody Protection')
product433.categories << category433 if category433.present? and product433.present?
vehicle433 = Refinery::Products::Vehicle.find_by_name('RA 2003-2008')
product433.vehicles << vehicle433 if vehicle433.present? and product433.present?
product434 = Refinery::Products::Product.create!(product_no:'IUP009K', name:'D-Max 07-11 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'D-Max 07-11  Underbody Protection'.blank?
category434 = Refinery::Products::Category.find_by_name('Underbody Protection')
product434.categories << category434 if category434.present? and product434.present?
vehicle434 = Refinery::Products::Vehicle.find_by_name('2007-2011')
product434.vehicles << vehicle434 if vehicle434.present? and product434.present?
product435 = Refinery::Products::Product.create!(product_no:'IUP010K', name:'Triton ML Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Triton ML Underbody Protection'.blank?
category435 = Refinery::Products::Category.find_by_name('Underbody Protection')
product435.categories << category435 if category435.present? and product435.present?
vehicle435 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product435.vehicles << vehicle435 if vehicle435.present? and product435.present?
product436 = Refinery::Products::Product.create!(product_no:'IUP010K', name:'Triton MN Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Triton MN Underbody Protection'.blank?
category436 = Refinery::Products::Category.find_by_name('Underbody Protection')
product436.categories << category436 if category436.present? and product436.present?
vehicle436 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product436.vehicles << vehicle436 if vehicle436.present? and product436.present?
product437 = Refinery::Products::Product.create!(product_no:'IUP010K', name:'Mitsubishi Challenger 2008+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Mitsubishi Challenger 2008+  Underbody Protection'.blank?
category437 = Refinery::Products::Category.find_by_name('Underbody Protection')
product437.categories << category437 if category437.present? and product437.present?
vehicle437 = Refinery::Products::Vehicle.find_by_name('PB 2009-2013')
product437.vehicles << vehicle437 if vehicle437.present? and product437.present?
product438 = Refinery::Products::Product.create!(product_no:'IUP011K', name:'Grand Vitara 2005+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Grand Vitara 2005+ Underbody Protection'.blank?
category438 = Refinery::Products::Category.find_by_name('Underbody Protection')
product438.categories << category438 if category438.present? and product438.present?
vehicle438 = Refinery::Products::Vehicle.find_by_name('2005+')
product438.vehicles << vehicle438 if vehicle438.present? and product438.present?
product439 = Refinery::Products::Product.create!(product_no:'IUP012K', name:'Amarok Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Amarok Underbody Protection'.blank?
category439 = Refinery::Products::Category.find_by_name('Underbody Protection')
product439.categories << category439 if category439.present? and product439.present?
vehicle439 = Refinery::Products::Vehicle.find_by_name('2010+')
product439.vehicles << vehicle439 if vehicle439.present? and product439.present?
product440 = Refinery::Products::Product.create!(product_no:'IUP013K', name:'Pajero NM-NP 2000-2006 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Pajero NM-NP 2000-2006 Underbody Protection'.blank?
category440 = Refinery::Products::Category.find_by_name('Underbody Protection')
product440.categories << category440 if category440.present? and product440.present?
vehicle440 = Refinery::Products::Vehicle.find_by_name('NM-NP 2000-2006')
product440.vehicles << vehicle440 if vehicle440.present? and product440.present?
product441 = Refinery::Products::Product.create!(product_no:'IUP013K', name:'Pajero NS 2000+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Pajero NS 2000+ Underbody Protection'.blank?
category441 = Refinery::Products::Category.find_by_name('Underbody Protection')
product441.categories << category441 if category441.present? and product441.present?
vehicle441 = Refinery::Products::Vehicle.find_by_name('NS 2006-2009')
product441.vehicles << vehicle441 if vehicle441.present? and product441.present?
product442 = Refinery::Products::Product.create!(product_no:'IUP013K', name:'Pajero NT 2000+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Pajero NT 2000+ Underbody Protection'.blank?
category442 = Refinery::Products::Category.find_by_name('Underbody Protection')
product442.categories << category442 if category442.present? and product442.present?
vehicle442 = Refinery::Products::Vehicle.find_by_name('NT 2009-2011')
product442.vehicles << vehicle442 if vehicle442.present? and product442.present?
product443 = Refinery::Products::Product.create!(product_no:'IUP013K', name:'Pajero NW 2011+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission + Radiator') if not 'Pajero NW 2011+ Underbody Protection'.blank?
category443 = Refinery::Products::Category.find_by_name('Underbody Protection')
product443.categories << category443 if category443.present? and product443.present?
vehicle443 = Refinery::Products::Vehicle.find_by_name('NW 2011+')
product443.vehicles << vehicle443 if vehicle443.present? and product443.present?
product444 = Refinery::Products::Product.create!(product_no:'IUP014K', name:'Ranger PX Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Ranger PX Underbody Protection'.blank?
category444 = Refinery::Products::Category.find_by_name('Underbody Protection')
product444.categories << category444 if category444.present? and product444.present?
vehicle444 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product444.vehicles << vehicle444 if vehicle444.present? and product444.present?
product445 = Refinery::Products::Product.create!(product_no:'IUP015K', name:'GU Patrol Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Radiator + Transmission') if not 'GU Patrol Underbody Protection'.blank?
category445 = Refinery::Products::Category.find_by_name('Underbody Protection')
product445.categories << category445 if category445.present? and product445.present?
vehicle445 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product445.vehicles << vehicle445 if vehicle445.present? and product445.present?
product446 = Refinery::Products::Product.create!(product_no:'IUP015K', name:'GU Patrol Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Radiator + Transmission') if not 'GU Patrol Underbody Protection'.blank?
category446 = Refinery::Products::Category.find_by_name('Underbody Protection')
product446.categories << category446 if category446.present? and product446.present?
vehicle446 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product446.vehicles << vehicle446 if vehicle446.present? and product446.present?
product447 = Refinery::Products::Product.create!(product_no:'IUP016K', name:'Discovery 3 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Discovery 3 Underbody Protection'.blank?
category447 = Refinery::Products::Category.find_by_name('Underbody Protection')
product447.categories << category447 if category447.present? and product447.present?
vehicle447 = Refinery::Products::Vehicle.find_by_name('Series 3')
product447.vehicles << vehicle447 if vehicle447.present? and product447.present?
product448 = Refinery::Products::Product.create!(product_no:'IUP016K', name:'Discovery 4 Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Discovery 4 Underbody Protection'.blank?
category448 = Refinery::Products::Category.find_by_name('Underbody Protection')
product448.categories << category448 if category448.present? and product448.present?
vehicle448 = Refinery::Products::Vehicle.find_by_name('Series 4')
product448.vehicles << vehicle448 if vehicle448.present? and product448.present?
product449 = Refinery::Products::Product.create!(product_no:'IUP016K', name:'Sport 2005+ Underbody Protection', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:'Engine Bay + Transmission') if not 'Sport 2005+ Underbody Protection'.blank?
category449 = Refinery::Products::Category.find_by_name('Underbody Protection')
product449.categories << category449 if category449.present? and product449.present?
vehicle449 = Refinery::Products::Vehicle.find_by_name('2005+')
product449.vehicles << vehicle449 if vehicle449.present? and product449.present?
product450 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category450 = Refinery::Products::Category.find_by_name('')
product450.categories << category450 if category450.present? and product450.present?
vehicle450 = Refinery::Products::Vehicle.find_by_name('')
product450.vehicles << vehicle450 if vehicle450.present? and product450.present?
product451 = Refinery::Products::Product.create!(product_no:'IUP003F', name:'Prado 150 Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Prado 150 Fuel Tank Protection Plate'.blank?
category451 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product451.categories << category451 if category451.present? and product451.present?
vehicle451 = Refinery::Products::Vehicle.find_by_name('150 Series')
product451.vehicles << vehicle451 if vehicle451.present? and product451.present?
product452 = Refinery::Products::Product.create!(product_no:'IUP004F', name:'Landcruiser 200 Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Landcruiser 200 Fuel Tank Protection Plate'.blank?
category452 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product452.categories << category452 if category452.present? and product452.present?
vehicle452 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product452.vehicles << vehicle452 if vehicle452.present? and product452.present?
product453 = Refinery::Products::Product.create!(product_no:'IUP004F', name:'Landcruiser 200 Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Landcruiser 200 Fuel Tank Protection Plate'.blank?
category453 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product453.categories << category453 if category453.present? and product453.present?
vehicle453 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product453.vehicles << vehicle453 if vehicle453.present? and product453.present?
product454 = Refinery::Products::Product.create!(product_no:'IUP007F', name:'Navara D40 Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Navara D40 Fuel Tank Protection Plate'.blank?
category454 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product454.categories << category454 if category454.present? and product454.present?
vehicle454 = Refinery::Products::Vehicle.find_by_name('D40')
product454.vehicles << vehicle454 if vehicle454.present? and product454.present?
product455 = Refinery::Products::Product.create!(product_no:'IUP010F', name:'Triton ML Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Triton ML Fuel Tank Protection Plate'.blank?
category455 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product455.categories << category455 if category455.present? and product455.present?
vehicle455 = Refinery::Products::Vehicle.find_by_name('ML 2006-2009')
product455.vehicles << vehicle455 if vehicle455.present? and product455.present?
product456 = Refinery::Products::Product.create!(product_no:'IUP010F', name:'Triton MN Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Triton MN Fuel Tank Protection Plate'.blank?
category456 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product456.categories << category456 if category456.present? and product456.present?
vehicle456 = Refinery::Products::Vehicle.find_by_name('MN 2009+')
product456.vehicles << vehicle456 if vehicle456.present? and product456.present?
product457 = Refinery::Products::Product.create!(product_no:'IUP014F', name:'Ranger PX Fuel Tank Protection Plate', description:'Ironman 4x4 protection plates perfectly integrate to your vehicles design with carefully positioned venting and water dispersion holes. This protects the key components without compromising airflow and durability. Offroad driving exposes your vehicle to damage from various obstacles such as rocks, logs, bumps and scrapes, particularly prevalent in vehicles with low ride height or independent suspension. Underbody protection plates are commonly relied upon offroad as a layer of armour underneath your 4x4.', notes:nil) if not 'Ranger PX Fuel Tank Protection Plate'.blank?
category457 = Refinery::Products::Category.find_by_name('Fuel Tank Protection Plates')
product457.categories << category457 if category457.present? and product457.present?
vehicle457 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product457.vehicles << vehicle457 if vehicle457.present? and product457.present?
product458 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category458 = Refinery::Products::Category.find_by_name('')
product458.categories << category458 if category458.present? and product458.present?
vehicle458 = Refinery::Products::Vehicle.find_by_name('')
product458.vehicles << vehicle458 if vehicle458.present? and product458.present?
product459 = Refinery::Products::Product.create!(product_no:'TROOFTENT TENT', name:'Rooftop Tent (Only)', description:'The Ironman 4x4 Rooftop Tent provides the ultimate in ease and convenience when travelling.  Unfolding in minutes, a rooftop tent provides sleeping quarters off the ground, protected from the elements.  Spacious and comfortable, all bedding can remain inside the tent during the journey, freeing up vital storage space in the vehicle, and allowing the tent to be quickly and easily packed away.', notes:nil) if not 'Rooftop Tent (Only)'.blank?
category459 = Refinery::Products::Category.find_by_name('Roof Top Tent')
product459.categories << category459 if category459.present? and product459.present?
vehicle459 = Refinery::Products::Vehicle.find_by_name('')
product459.vehicles << vehicle459 if vehicle459.present? and product459.present?
product460 = Refinery::Products::Product.create!(product_no:'IROOFTENT ANNEX', name:'Rooftop Tent Annex (Only)', description:'The Ironman 4x4 Rooftop Tent Annex is the perfect addition to the Rooftop tent for those looking for a little extra space. Perfect to use as a change room or even an area for the kids to sleep, the Annex is quick to setup and provides functional, sheltered, ground level space.', notes:nil) if not 'Rooftop Tent Annex (Only)'.blank?
category460 = Refinery::Products::Category.find_by_name('Roof Top Tent')
product460.categories << category460 if category460.present? and product460.present?
vehicle460 = Refinery::Products::Vehicle.find_by_name('')
product460.vehicles << vehicle460 if vehicle460.present? and product460.present?
product461 = Refinery::Products::Product.create!(product_no:'IROOFTENT002', name:'54cms Ladder Extension Kit', description:'For vehicles that are a little taller than normal the ladder extension kit allows you to extend the ladder from your rooftop tent, ensuring you can climb up no matter how lifted your vehicle is.', notes:nil) if not '54cms Ladder Extension Kit'.blank?
category461 = Refinery::Products::Category.find_by_name('Roof Top Tent')
product461.categories << category461 if category461.present? and product461.present?
vehicle461 = Refinery::Products::Vehicle.find_by_name('')
product461.vehicles << vehicle461 if vehicle461.present? and product461.present?
product462 = Refinery::Products::Product.create!(product_no:'IROOFTENT003', name:'Annex Extension Kit', description:'For vehicles that are a little taller than normal the annex extension kit allows you to extend the annex of your rooftop tent allowing taller and vehicles that have been significantly lifted to still add on the annex.', notes:nil) if not 'Annex Extension Kit'.blank?
category462 = Refinery::Products::Category.find_by_name('Roof Top Tent')
product462.categories << category462 if category462.present? and product462.present?
vehicle462 = Refinery::Products::Vehicle.find_by_name('')
product462.vehicles << vehicle462 if vehicle462.present? and product462.present?
product463 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category463 = Refinery::Products::Category.find_by_name('')
product463.categories << category463 if category463.present? and product463.present?
vehicle463 = Refinery::Products::Vehicle.find_by_name('')
product463.vehicles << vehicle463 if vehicle463.present? and product463.present?
product464 = Refinery::Products::Product.create!(product_no:'IAWNING001L', name:'Instant Awning with Brackets 2m (L) x 2.5m (Out) with LED', description:'Whether you are just stopping on the side of the road for lunch, or setting up camp for a week, the Ironman Instant Awning will provide you with much needed shade from the sun. The Instant Awning attaches to your roof rack, and sets up in minutes. Simply unzip the PVC Cover, roll out the Ripstop Canvas awning, lock in the cam-lock telescopic uprights and supports, and peg it down with the included guy ropes and pegs.', notes:nil) if not 'Instant Awning with Brackets 2m (L) x 2.5m (Out) with LED'.blank?
category464 = Refinery::Products::Category.find_by_name('Awnings')
product464.categories << category464 if category464.present? and product464.present?
vehicle464 = Refinery::Products::Vehicle.find_by_name('')
product464.vehicles << vehicle464 if vehicle464.present? and product464.present?
product465 = Refinery::Products::Product.create!(product_no:'IAWNING001 ROOM', name:'Room Enclosure (Suits IAWNING001)', description:'The Instant Awning can even be combined with a Room Enclosure kit to provide even more protection!', notes:nil) if not 'Room Enclosure (Suits IAWNING001)'.blank?
category465 = Refinery::Products::Category.find_by_name('Awning Accessories')
product465.categories << category465 if category465.present? and product465.present?
vehicle465 = Refinery::Products::Vehicle.find_by_name('')
product465.vehicles << vehicle465 if vehicle465.present? and product465.present?
product466 = Refinery::Products::Product.create!(product_no:'IAWNING001 NET', name:'Fly Screen Netting (Suits IAWNING001)', description:'The Instant Awning can even be combined with a Mosquito Net kit to provide even more protection!', notes:nil) if not 'Fly Screen Netting (Suits IAWNING001)'.blank?
category466 = Refinery::Products::Category.find_by_name('Awning Accessories')
product466.categories << category466 if category466.present? and product466.present?
vehicle466 = Refinery::Products::Vehicle.find_by_name('')
product466.vehicles << vehicle466 if vehicle466.present? and product466.present?
product467 = Refinery::Products::Product.create!(product_no:'IAWNING003L', name:'Instant Awning with Brackets 2.5m (L) x 2m (Out) with LED', description:'Whether you are just stopping on the side of the road for lunch, or setting up camp for a week, the Ironman Instant Awning will provide you with much needed shade from the sun. The Instant Awning attaches to your roof rack, and sets up in minutes. Simply unzip the PVC Cover, roll out the Ripstop Canvas awning, lock in the cam-lock telescopic uprights and supports, and peg it down with the included guy ropes and pegs.', notes:nil) if not 'Instant Awning with Brackets 2.5m (L) x 2m (Out) with LED'.blank?
category467 = Refinery::Products::Category.find_by_name('Awnings')
product467.categories << category467 if category467.present? and product467.present?
vehicle467 = Refinery::Products::Vehicle.find_by_name('')
product467.vehicles << vehicle467 if vehicle467.present? and product467.present?
product468 = Refinery::Products::Product.create!(product_no:'IAWNING003 ROOM', name:'Room Enclosure (Suits IAWNING003)', description:'The Instant Awning can even be combined with a Room Enclosure kit to provide even more protection!', notes:nil) if not 'Room Enclosure (Suits IAWNING003)'.blank?
category468 = Refinery::Products::Category.find_by_name('Awning Accessories')
product468.categories << category468 if category468.present? and product468.present?
vehicle468 = Refinery::Products::Vehicle.find_by_name('')
product468.vehicles << vehicle468 if vehicle468.present? and product468.present?
product469 = Refinery::Products::Product.create!(product_no:'IAWNING003 NET', name:'Fly Screen Netting (Suits IAWNING003)', description:'The Instant Awning can even be combined with a Mosquito Net kit to provide even more protection!', notes:nil) if not 'Fly Screen Netting (Suits IAWNING003)'.blank?
category469 = Refinery::Products::Category.find_by_name('Awning Accessories')
product469.categories << category469 if category469.present? and product469.present?
vehicle469 = Refinery::Products::Vehicle.find_by_name('')
product469.vehicles << vehicle469 if vehicle469.present? and product469.present?
product470 = Refinery::Products::Product.create!(product_no:'IAWNING004L', name:'Instant Awning with Brackets 1.4m (L) x 2m (Out) with LED', description:'Whether you are just stopping on the side of the road for lunch, or setting up camp for a week, the Ironman Instant Awning will provide you with much needed shade from the sun. The Instant Awning attaches to your roof rack, and sets up in minutes. Simply unzip the PVC Cover, roll out the Ripstop Canvas awning, lock in the cam-lock telescopic uprights and supports, and peg it down with the included guy ropes and pegs.', notes:nil) if not 'Instant Awning with Brackets 1.4m (L) x 2m (Out) with LED'.blank?
category470 = Refinery::Products::Category.find_by_name('Awnings')
product470.categories << category470 if category470.present? and product470.present?
vehicle470 = Refinery::Products::Vehicle.find_by_name('')
product470.vehicles << vehicle470 if vehicle470.present? and product470.present?
product471 = Refinery::Products::Product.create!(product_no:'IAWNING004 ROOM', name:'Room Enclosure (Suits IAWNING004)', description:'The Instant Awning can even be combined with a Room Enclosure kit to provide even more protection!', notes:nil) if not 'Room Enclosure (Suits IAWNING004)'.blank?
category471 = Refinery::Products::Category.find_by_name('Awning Accessories')
product471.categories << category471 if category471.present? and product471.present?
vehicle471 = Refinery::Products::Vehicle.find_by_name('')
product471.vehicles << vehicle471 if vehicle471.present? and product471.present?
product472 = Refinery::Products::Product.create!(product_no:'IAWNING004 NET', name:'Fly Screen Netting (Suits IAWNING004)', description:'The Instant Awning can even be combined with a Mosquito Net kit to provide even more protection!', notes:nil) if not 'Fly Screen Netting (Suits IAWNING004)'.blank?
category472 = Refinery::Products::Category.find_by_name('Awning Accessories')
product472.categories << category472 if category472.present? and product472.present?
vehicle472 = Refinery::Products::Vehicle.find_by_name('')
product472.vehicles << vehicle472 if vehicle472.present? and product472.present?
product473 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category473 = Refinery::Products::Category.find_by_name('')
product473.categories << category473 if category473.present? and product473.present?
vehicle473 = Refinery::Products::Vehicle.find_by_name('')
product473.vehicles << vehicle473 if vehicle473.present? and product473.present?
product474 = Refinery::Products::Product.create!(product_no:'ICHAIR001', name:'Strong Arm Chair', description:'The Ironman Strong Arm Chair features a durable powder coated steel frame and heavy duty steel arms. King size for extra comfort, padded seat and back rest, drink holder, storage pocket and carry bag. Folds for easy storage.', notes:'(Rated 150 kg)') if not 'Strong Arm Chair '.blank?
category474 = Refinery::Products::Category.find_by_name('Camping Accessories')
product474.categories << category474 if category474.present? and product474.present?
vehicle474 = Refinery::Products::Vehicle.find_by_name('')
product474.vehicles << vehicle474 if vehicle474.present? and product474.present?
product475 = Refinery::Products::Product.create!(product_no:'ICHAIR002', name:'Soft Arm Chair', description:'The Ironman Soft Arm Chair is the place to be after a long day behind the wheel. King size for extra comfort, padded seat and back rest, drink holder, cooler box, storage pocket and carry bag. Folds for easy storage.', notes:'(Rated 150 kg)') if not 'Soft Arm Chair '.blank?
category475 = Refinery::Products::Category.find_by_name('Camping Accessories')
product475.categories << category475 if category475.present? and product475.present?
vehicle475 = Refinery::Products::Vehicle.find_by_name('')
product475.vehicles << vehicle475 if vehicle475.present? and product475.present?
product476 = Refinery::Products::Product.create!(product_no:'ITABLE001', name:'Quick Fold Table', description:'Quick folding lets for easy packing. 90cm x 60cm table rated for 70kg. Side carry handle, carry bag, annodised frame & legs.', notes:'(Rated 70 kg)') if not 'Quick Fold Table '.blank?
category476 = Refinery::Products::Category.find_by_name('Camping Accessories')
product476.categories << category476 if category476.present? and product476.present?
vehicle476 = Refinery::Products::Vehicle.find_by_name('')
product476.vehicles << vehicle476 if vehicle476.present? and product476.present?
product477 = Refinery::Products::Product.create!(product_no:'ICARGOBAG001', name:'50L Cargo Bag', description:'50L Cargo Bag features double carry handles with velcro strap, padded shoulder strap, heavy duty zip and side pocket. Perfect for the weekend getaway.', notes:nil) if not '50L Cargo Bag'.blank?
category477 = Refinery::Products::Category.find_by_name('Camping Accessories')
product477.categories << category477 if category477.present? and product477.present?
vehicle477 = Refinery::Products::Vehicle.find_by_name('')
product477.vehicles << vehicle477 if vehicle477.present? and product477.present?
product478 = Refinery::Products::Product.create!(product_no:'ITENTFAN001', name:'Tent Fan with LED Light', description:'Keep cool in your tent with this two speed fa and LED light. Operates on 4 x D sized batteries (not included) with up to 48 hours run time. Energy efficient white LED light rated to 50 lumens.', notes:nil) if not 'Tent Fan with LED Light'.blank?
category478 = Refinery::Products::Category.find_by_name('Camping Accessories')
product478.categories << category478 if category478.present? and product478.present?
vehicle478 = Refinery::Products::Vehicle.find_by_name('')
product478.vehicles << vehicle478 if vehicle478.present? and product478.present?
product479 = Refinery::Products::Product.create!(product_no:'ISOLARKIT001', name:'Solar Kit (80 Watt)', description:'The Ironman 4x4 80 watt solar kit is the perfect addition for keeping your batteries topped up. Featuring a folding aluminium frame with support legs, a built in charging regulator and a 3 year warranty. The solar kit is perfect for you extended camps where charging batteries through your alternator won\'t be enough.', notes:nil) if not 'Solar Kit (80 Watt)'.blank?
category479 = Refinery::Products::Category.find_by_name('Camping Accessories')
product479.categories << category479 if category479.present? and product479.present?
vehicle479 = Refinery::Products::Vehicle.find_by_name('')
product479.vehicles << vehicle479 if vehicle479.present? and product479.present?
product480 = Refinery::Products::Product.create!(product_no:'IPICNICSET001', name:'Picnic Set (43 Piece set)', description:'Everything but the kitchen sink! 6 sets of cutlery, plates, salt & pepper shakers, cutting board, wine goblets, bottle opener, napkins and picnic rug. All 43 items in a durable carry bag that includes an insulated cooler compartment.', notes:nil) if not 'Picnic Set (43 Piece set)'.blank?
category480 = Refinery::Products::Category.find_by_name('Camping Accessories')
product480.categories << category480 if category480.present? and product480.present?
vehicle480 = Refinery::Products::Vehicle.find_by_name('')
product480.vehicles << vehicle480 if vehicle480.present? and product480.present?
product481 = Refinery::Products::Product.create!(product_no:'IBUSHTOILET', name:'Ironman Bush Toilet', description:'Long description here. Quod autem qui decima cum demonstraverunt. Mirum adipiscing humanitatis cum aliquam ullamcorper. In claram eu qui nisl ii. Est nonummy facer iriure in tincidunt. Et placerat in imperdiet augue processus.', notes:nil) if not 'Ironman Bush Toilet'.blank?
category481 = Refinery::Products::Category.find_by_name('Camping Accessories')
product481.categories << category481 if category481.present? and product481.present?
vehicle481 = Refinery::Products::Vehicle.find_by_name('')
product481.vehicles << vehicle481 if vehicle481.present? and product481.present?
product482 = Refinery::Products::Product.create!(product_no:'IHEADLAMP001', name:'LED Headlamp', description:'94 Lumens LED head lamp. Comfortable adjustable head straps. Wave your hand in front of the light to turn on or off. A great camping accessory or gift idea! Batteries included.', notes:nil) if not 'LED Headlamp'.blank?
category482 = Refinery::Products::Category.find_by_name('Camping Accessories')
product482.categories << category482 if category482.present? and product482.present?
vehicle482 = Refinery::Products::Vehicle.find_by_name('')
product482.vehicles << vehicle482 if vehicle482.present? and product482.present?
product483 = Refinery::Products::Product.create!(product_no:'ILANTERN001', name:'LED Lantern', description:'180 Lumens max output power provides up to 25 hours continuous usage. 3 mode operation - high/low/flashing. Water resistant with a compact lightweight aluminium body. There\'s no need to sit there in the dark! A great camping accessory or gift idea.', notes:nil) if not 'LED Lantern'.blank?
category483 = Refinery::Products::Category.find_by_name('Camping Accessories')
product483.categories << category483 if category483.present? and product483.present?
vehicle483 = Refinery::Products::Vehicle.find_by_name('')
product483.vehicles << vehicle483 if vehicle483.present? and product483.present?
product484 = Refinery::Products::Product.create!(product_no:'ITENTLIGHT001', name:'LED Tent Light', description:'This multi-function tent light is attached inside your tent using the swivel hook located at the rear. Features 21 premium white LEDS, dimmer control, timer, night light in a durable ABS housing with transparent lens.', notes:nil) if not 'LED Tent Light'.blank?
category484 = Refinery::Products::Category.find_by_name('Camping Accessories')
product484.categories << category484 if category484.present? and product484.present?
vehicle484 = Refinery::Products::Vehicle.find_by_name('')
product484.vehicles << vehicle484 if vehicle484.present? and product484.present?
product485 = Refinery::Products::Product.create!(product_no:'ITORCHLED001', name:'Cordless Ultrlight 12v / 240v Rechargeable', description:'Ideal for the outdoors, camping, tradesmen or the workshop. Our rechargeable LED Cordless Ultra-Light features up to 10 hours continuous light!', notes:nil) if not 'Cordless Ultrlight 12v / 240v Rechargeable'.blank?
category485 = Refinery::Products::Category.find_by_name('Camping Accessories')
product485.categories << category485 if category485.present? and product485.present?
vehicle485 = Refinery::Products::Vehicle.find_by_name('')
product485.vehicles << vehicle485 if vehicle485.present? and product485.present?
product486 = Refinery::Products::Product.create!(product_no:'IFISHING001', name:'Multi Rod Fishing Rod', description:'The new Ironman 4x4 Travel Master Multi-Rod is the ideal lightweight, portable fishing tool. Facilitating the perfect fishing setup for any situation, offering 36 combinations in 9 different rod styles, you\'ll have the ideal setup from river to surf fishing at a moment\'s notice. The unique, patent pending design of the Multi-Rod provides a customisable setup to ensure you\'ll have the ideal rod every time. The carbon fiber construction facilitates its lightweight and durable design, whilst the easy connecting adaptors allow for quick setup of the rod. All this is packed into a compact and easy to store carry tube.', notes:nil) if not 'Multi Rod Fishing Rod'.blank?
category486 = Refinery::Products::Category.find_by_name('Fishing')
product486.categories << category486 if category486.present? and product486.present?
vehicle486 = Refinery::Products::Vehicle.find_by_name('')
product486.vehicles << vehicle486 if vehicle486.present? and product486.present?
product487 = Refinery::Products::Product.create!(product_no:'IFISHING002', name:'Multi Rod Fishing Reel', description:'The perfect companion to the Ironman 4x4 Travel Master Multi-Rod, the Travel master Multi-Reel provides the flexibility to suit a variety of fishing styles. Designed to complement the versatile Multi-Rod, the Multi-Reel features 3 pre-lined spools colour coded to match the rod tips, pinion gears, 9 + 1 ball bearings, 5.5:1 gearing ratio and a silent anti-reverse. It\'s the perfect reel to complete you kit.', notes:nil) if not 'Multi Rod Fishing Reel'.blank?
category487 = Refinery::Products::Category.find_by_name('Fishing')
product487.categories << category487 if category487.present? and product487.present?
vehicle487 = Refinery::Products::Vehicle.find_by_name('')
product487.vehicles << vehicle487 if vehicle487.present? and product487.present?
product488 = Refinery::Products::Product.create!(product_no:'ISWAG0001', name:'Ironman 4x4 King Single Swag', description:'An easy solution to accommodation \'on the run\' the swag has a long history in Australia - even if your campsite is not by a billabong! This single dome, heavy duty version is manufactured in 320 gsm ripstop canvas, includes insect mesh protection, lightweight alloy poles, a 7cm high density mattress and heavy duty carry bag.', notes:nil) if not 'Ironman 4x4 King Single Swag'.blank?
category488 = Refinery::Products::Category.find_by_name('Swags')
product488.categories << category488 if category488.present? and product488.present?
vehicle488 = Refinery::Products::Vehicle.find_by_name('')
product488.vehicles << vehicle488 if vehicle488.present? and product488.present?
product489 = Refinery::Products::Product.create!(product_no:'ISWAG0002', name:'Ironman 4x4 Double Swag', description:'An easy solution to accommodation \'on the run\' the swag has a long history in Australia - even if your campsite is not by a billabong! This single dome, heavy duty version is manufactured in 320 gsm ripstop canvas, includes insect mesh protection, lightweight alloy poles, a 7cm high density mattress and heavy duty carry bag. This double swag will comfortably sleep two.', notes:nil) if not 'Ironman 4x4 Double Swag'.blank?
category489 = Refinery::Products::Category.find_by_name('Swags')
product489.categories << category489 if category489.present? and product489.present?
vehicle489 = Refinery::Products::Vehicle.find_by_name('')
product489.vehicles << vehicle489 if vehicle489.present? and product489.present?
product490 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category490 = Refinery::Products::Category.find_by_name('')
product490.categories << category490 if category490.present? and product490.present?
vehicle490 = Refinery::Products::Vehicle.find_by_name('')
product490.vehicles << vehicle490 if vehicle490.present? and product490.present?
product491 = Refinery::Products::Product.create!(product_no:'MINING001', name:'1.8m flag with spring base, quick release and LED light', description:'Long description here. Quod autem qui decima cum demonstraverunt. Mirum adipiscing humanitatis cum aliquam ullamcorper. In claram eu qui nisl ii. Est nonummy facer iriure in tincidunt. Et placerat in imperdiet augue processus.', notes:nil) if not '1.8m flag with spring base, quick release and LED light '.blank?
category491 = Refinery::Products::Category.find_by_name('Sand Flag')
product491.categories << category491 if category491.present? and product491.present?
vehicle491 = Refinery::Products::Vehicle.find_by_name('')
product491.vehicles << vehicle491 if vehicle491.present? and product491.present?
product492 = Refinery::Products::Product.create!(product_no:'MINING005', name:'High Mount light bars', description:'Long description here. Quod autem qui decima cum demonstraverunt. Mirum adipiscing humanitatis cum aliquam ullamcorper. In claram eu qui nisl ii. Est nonummy facer iriure in tincidunt. Et placerat in imperdiet augue processus.', notes:nil) if not 'High Mount  light bars '.blank?
category492 = Refinery::Products::Category.find_by_name('Mining Light Bar')
product492.categories << category492 if category492.present? and product492.present?
vehicle492 = Refinery::Products::Vehicle.find_by_name('')
product492.vehicles << vehicle492 if vehicle492.present? and product492.present?
product493 = Refinery::Products::Product.create!(product_no:'MINING008', name:'2.4m flag with spring base, quick release and LED', description:'Long description here. Quod autem qui decima cum demonstraverunt. Mirum adipiscing humanitatis cum aliquam ullamcorper. In claram eu qui nisl ii. Est nonummy facer iriure in tincidunt. Et placerat in imperdiet augue processus.', notes:nil) if not '2.4m flag with spring base, quick release and LED '.blank?
category493 = Refinery::Products::Category.find_by_name('Sand Flag')
product493.categories << category493 if category493.present? and product493.present?
vehicle493 = Refinery::Products::Vehicle.find_by_name('')
product493.vehicles << vehicle493 if vehicle493.present? and product493.present?
product494 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category494 = Refinery::Products::Category.find_by_name('')
product494.categories << category494 if category494.present? and product494.present?
vehicle494 = Refinery::Products::Vehicle.find_by_name('')
product494.vehicles << vehicle494 if vehicle494.present? and product494.present?
product495 = Refinery::Products::Product.create!(product_no:'IEXHAUST001', name:'Landcruiser 79 Series 2007+ Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'4.5L V8 Turbo Diesel (Manual)') if not 'Landcruiser 79 Series 2007+ Exhaust System'.blank?
category495 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product495.categories << category495 if category495.present? and product495.present?
vehicle495 = Refinery::Products::Vehicle.find_by_name('79 Series 2007+')
product495.vehicles << vehicle495 if vehicle495.present? and product495.present?
product496 = Refinery::Products::Product.create!(product_no:'IEXHAUST002', name:'Landcruiser 76 Series 2007+ Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'4.5L V8 Turbo Diesel (Manual)') if not 'Landcruiser 76 Series 2007+ Exhaust System'.blank?
category496 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product496.categories << category496 if category496.present? and product496.present?
vehicle496 = Refinery::Products::Vehicle.find_by_name('76 Series 2007+')
product496.vehicles << vehicle496 if vehicle496.present? and product496.present?
product497 = Refinery::Products::Product.create!(product_no:'IEXHAUST003', name:'Landcruiser 200 Series Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'4.5L V8 Twin Turbo (Auto)') if not 'Landcruiser 200 Series Exhaust System'.blank?
category497 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product497.categories << category497 if category497.present? and product497.present?
vehicle497 = Refinery::Products::Vehicle.find_by_name('200 Series 2008-2012')
product497.vehicles << vehicle497 if vehicle497.present? and product497.present?
product498 = Refinery::Products::Product.create!(product_no:'IEXHAUST003', name:'Landcruiser 200 Series Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'4.5L V8 Twin Turbo (Auto)') if not 'Landcruiser 200 Series Exhaust System'.blank?
category498 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product498.categories << category498 if category498.present? and product498.present?
vehicle498 = Refinery::Products::Vehicle.find_by_name('200 Series 2012+')
product498.vehicles << vehicle498 if vehicle498.present? and product498.present?
product499 = Refinery::Products::Product.create!(product_no:'IEXHAUST004', name:'Prado 120 Series Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'LWB 3L D4D (Manual & Auto)') if not 'Prado 120 Series Exhaust System'.blank?
category499 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product499.categories << category499 if category499.present? and product499.present?
vehicle499 = Refinery::Products::Vehicle.find_by_name('120 Series')
product499.vehicles << vehicle499 if vehicle499.present? and product499.present?
product500 = Refinery::Products::Product.create!(product_no:'IEXHAUST004', name:'Prado 150 Series Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'LWB 3L D4D (Manual & Auto)') if not 'Prado 150 Series Exhaust System'.blank?
category500 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product500.categories << category500 if category500.present? and product500.present?
vehicle500 = Refinery::Products::Vehicle.find_by_name('150 Series')
product500.vehicles << vehicle500 if vehicle500.present? and product500.present?
product501 = Refinery::Products::Product.create!(product_no:'IEXHAUST005', name:'Hilux 2005+ Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'KUN16R / KUN25R 3L CRD (Manual & Auto)') if not 'Hilux 2005+ Exhaust System'.blank?
category501 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product501.categories << category501 if category501.present? and product501.present?
vehicle501 = Refinery::Products::Vehicle.find_by_name('2005+')
product501.vehicles << vehicle501 if vehicle501.present? and product501.present?
product502 = Refinery::Products::Product.create!(product_no:'IEXHAUST006', name:'Patrol GU Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'3L Wagon (Manual & Auto)') if not 'Patrol GU Exhaust System'.blank?
category502 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product502.categories << category502 if category502.present? and product502.present?
vehicle502 = Refinery::Products::Vehicle.find_by_name('GU S1-3 1998-2004')
product502.vehicles << vehicle502 if vehicle502.present? and product502.present?
product503 = Refinery::Products::Product.create!(product_no:'IEXHAUST006', name:'Patrol GU Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'3L Wagon (Manual & Auto)') if not 'Patrol GU Exhaust System'.blank?
category503 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product503.categories << category503 if category503.present? and product503.present?
vehicle503 = Refinery::Products::Vehicle.find_by_name('GU S4+ 2005+')
product503.vehicles << vehicle503 if vehicle503.present? and product503.present?
product504 = Refinery::Products::Product.create!(product_no:'IEXHAUST007', name:'Ranger PX Exhaust System (Manual)', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'3.2L 5 Cyl Turbo Diesel (Manual)') if not 'Ranger PX  Exhaust System (Manual)'.blank?
category504 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product504.categories << category504 if category504.present? and product504.present?
vehicle504 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product504.vehicles << vehicle504 if vehicle504.present? and product504.present?
product505 = Refinery::Products::Product.create!(product_no:'IEXHAUST008', name:'Ranger PX Exhaust System (Auto)', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'3.2L 5 Cyl Turbo Diesel (Auto)') if not 'Ranger PX Exhaust System (Auto)'.blank?
category505 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product505.categories << category505 if category505.present? and product505.present?
vehicle505 = Refinery::Products::Vehicle.find_by_name('PX 2011+')
product505.vehicles << vehicle505 if vehicle505.present? and product505.present?
product506 = Refinery::Products::Product.create!(product_no:'IEXHAUST009', name:'Landcruiser 78 Series 2007+ Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'Troop Carrier , 4.5L V8 Turbo Diesel (Manual)') if not 'Landcruiser 78 Series 2007+ Exhaust System'.blank?
category506 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product506.categories << category506 if category506.present? and product506.present?
vehicle506 = Refinery::Products::Vehicle.find_by_name('78 Series 2007+')
product506.vehicles << vehicle506 if vehicle506.present? and product506.present?
product507 = Refinery::Products::Product.create!(product_no:'IEXHAUST010', name:'Landcruiser 100 Series Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'IFS 4.2L Turbo Diesel (Manual)') if not 'Landcruiser 100 Series  Exhaust System'.blank?
category507 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product507.categories << category507 if category507.present? and product507.present?
vehicle507 = Refinery::Products::Vehicle.find_by_name('100 Series')
product507.vehicles << vehicle507 if vehicle507.present? and product507.present?
product508 = Refinery::Products::Product.create!(product_no:'IEXHAUST011', name:'Navara D22 Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'2.5L Turbo Diesel (Manual & Auto)') if not 'Navara D22  Exhaust System'.blank?
category508 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product508.categories << category508 if category508.present? and product508.present?
vehicle508 = Refinery::Products::Vehicle.find_by_name('D22')
product508.vehicles << vehicle508 if vehicle508.present? and product508.present?
product509 = Refinery::Products::Product.create!(product_no:'IEXHAUST012', name:'Navara D40 Exhaust System', description:'The Ironman 4x4 BigBore Exhaust System is designed with Australian four wheel driving and touring in mind. Our improved design allows the engine to breathe more efficiently increasing torque and pulling power. Each system is designed to get the maximum performance and efficiency from the engine, whilst keeping the noise down and allowing for maximum ground clearance. When developing a new exhaust system our engineers vigorously road test and dyno a standard vehicle to check boost and exhaust temperature. The vehicle is also tested for the standard power and torque output.From this information, we then engineer and tailor an exhaust system to suit a vehicle\'s specific requirements, one that provides optimum power, torque and efficiency improvements over a standard factory exhaust.', notes:'V6 Turbo Diesel (Auto)') if not 'Navara D40  Exhaust System'.blank?
category509 = Refinery::Products::Category.find_by_name('Exhaust Systems')
product509.categories << category509 if category509.present? and product509.present?
vehicle509 = Refinery::Products::Vehicle.find_by_name('D40')
product509.vehicles << vehicle509 if vehicle509.present? and product509.present?
product510 = Refinery::Products::Product.create!(product_no:'', name:'', description:'', notes:nil) if not ''.blank?
category510 = Refinery::Products::Category.find_by_name('')
product510.categories << category510 if category510.present? and product510.present?
vehicle510 = Refinery::Products::Vehicle.find_by_name('')
product510.vehicles << vehicle510 if vehicle510.present? and product510.present?
product511 = Refinery::Products::Product.create!(product_no:'ISPC001', name:'Ironman 4x4 Space Case 97L', description:'Tough, reliable and made in Australia for Australian conditions! The Ironman 4x4 spacecase is up to any transport task. Great for tools and equipment storage, camping, or 4WD and the great outdoors.', notes:'550x550x450') if not 'Ironman 4x4 Space Case 97L '.blank?
category511 = Refinery::Products::Category.find_by_name('Space Cases')
product511.categories << category511 if category511.present? and product511.present?
vehicle511 = Refinery::Products::Vehicle.find_by_name('')
product511.vehicles << vehicle511 if vehicle511.present? and product511.present?
product512 = Refinery::Products::Product.create!(product_no:'ISPC002', name:'Ironman 4x4 Space Case 74L', description:'Tough, reliable and made in Australia for Australian conditions! The Ironman 4x4 spacecase is up to any transport task. Great for tools and equipment storage, camping, or 4WD and the great outdoors.', notes:'780x380x380') if not 'Ironman 4x4 Space Case 74L '.blank?
category512 = Refinery::Products::Category.find_by_name('Space Cases')
product512.categories << category512 if category512.present? and product512.present?
vehicle512 = Refinery::Products::Vehicle.find_by_name('')
product512.vehicles << vehicle512 if vehicle512.present? and product512.present?
product513 = Refinery::Products::Product.create!(product_no:'ISPC003', name:'Ironman 4x4 Space Case 135L', description:'Tough, reliable and made in Australia for Australian conditions! The Ironman 4x4 spacecase is up to any transport task. Great for tools and equipment storage, camping, or 4WD and the great outdoors.', notes:'900x550x400') if not 'Ironman 4x4 Space Case 135L '.blank?
category513 = Refinery::Products::Category.find_by_name('Space Cases')
product513.categories << category513 if category513.present? and product513.present?
vehicle513 = Refinery::Products::Vehicle.find_by_name('')
product513.vehicles << vehicle513 if vehicle513.present? and product513.present?
product514 = Refinery::Products::Product.create!(product_no:'ISPC004', name:'Ironman 4x4 Space Case 134L', description:'Tough, reliable and made in Australia for Australian conditions! The Ironman 4x4 spacecase is up to any transport task. Great for tools and equipment storage, camping, or 4WD and the great outdoors.', notes:'1100x550x310') if not 'Ironman 4x4 Space Case 134L '.blank?
category514 = Refinery::Products::Category.find_by_name('Space Cases')
product514.categories << category514 if category514.present? and product514.present?
vehicle514 = Refinery::Products::Vehicle.find_by_name('')
product514.vehicles << vehicle514 if vehicle514.present? and product514.present?
product515 = Refinery::Products::Product.create!(product_no:'ISPC005', name:'Ironman 4x4 Space Case 196L', description:'Tough, reliable and made in Australia for Australian conditions! The Ironman 4x4 spacecase is up to any transport task. Great for tools and equipment storage, camping, or 4WD and the great outdoors.', notes:'1100x550x450') if not 'Ironman 4x4 Space Case 196L '.blank?
category515 = Refinery::Products::Category.find_by_name('Space Cases')
product515.categories << category515 if category515.present? and product515.present?
vehicle515 = Refinery::Products::Vehicle.find_by_name('')
product515.vehicles << vehicle515 if vehicle515.present? and product515.present?
product516 = Refinery::Products::Product.create!(product_no:'ITB001', name:'900mm Alloy 1 tonner Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '900mm Alloy 1 tonner Tool Box'.blank?
category516 = Refinery::Products::Category.find_by_name('Tool Boxes')
product516.categories << category516 if category516.present? and product516.present?
vehicle516 = Refinery::Products::Vehicle.find_by_name('')
product516.vehicles << vehicle516 if vehicle516.present? and product516.present?
product517 = Refinery::Products::Product.create!(product_no:'ITB002', name:'1200mm Alloy 1 tonner Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '1200mm Alloy 1 tonner Tool Box'.blank?
category517 = Refinery::Products::Category.find_by_name('Tool Boxes')
product517.categories << category517 if category517.present? and product517.present?
vehicle517 = Refinery::Products::Vehicle.find_by_name('')
product517.vehicles << vehicle517 if vehicle517.present? and product517.present?
product518 = Refinery::Products::Product.create!(product_no:'ITB003', name:'950mm Alloy Low Profile Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '950mm Alloy Low Profile Tool Box'.blank?
category518 = Refinery::Products::Category.find_by_name('Tool Boxes')
product518.categories << category518 if category518.present? and product518.present?
vehicle518 = Refinery::Products::Vehicle.find_by_name('')
product518.vehicles << vehicle518 if vehicle518.present? and product518.present?
product519 = Refinery::Products::Product.create!(product_no:'ITB004', name:'1250mm Alloy Low Profile Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '1250mm Alloy Low Profile Tool Box'.blank?
category519 = Refinery::Products::Category.find_by_name('Tool Boxes')
product519.categories << category519 if category519.present? and product519.present?
vehicle519 = Refinery::Products::Vehicle.find_by_name('')
product519.vehicles << vehicle519 if vehicle519.present? and product519.present?
product520 = Refinery::Products::Product.create!(product_no:'ITB005', name:'700mm Steel Truck Box with Drawers and Full Door', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '700mm Steel Truck Box with Drawers and Full Door'.blank?
category520 = Refinery::Products::Category.find_by_name('Tool Boxes')
product520.categories << category520 if category520.present? and product520.present?
vehicle520 = Refinery::Products::Vehicle.find_by_name('')
product520.vehicles << vehicle520 if vehicle520.present? and product520.present?
product521 = Refinery::Products::Product.create!(product_no:'ITB006', name:'1200mm Steel Truck Box with Drawers and Full Door', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '1200mm Steel Truck Box with Drawers and Full Door'.blank?
category521 = Refinery::Products::Category.find_by_name('Tool Boxes')
product521.categories << category521 if category521.present? and product521.present?
vehicle521 = Refinery::Products::Vehicle.find_by_name('')
product521.vehicles << vehicle521 if vehicle521.present? and product521.present?
product522 = Refinery::Products::Product.create!(product_no:'ITB007', name:'Undertray LHS Alloy Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not 'Undertray LHS Alloy Tool Box'.blank?
category522 = Refinery::Products::Category.find_by_name('Tool Boxes')
product522.categories << category522 if category522.present? and product522.present?
vehicle522 = Refinery::Products::Vehicle.find_by_name('')
product522.vehicles << vehicle522 if vehicle522.present? and product522.present?
product523 = Refinery::Products::Product.create!(product_no:'ITB008', name:'Undertray RHS Alloy Tool Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not 'Undertray RHS Alloy Tool Box'.blank?
category523 = Refinery::Products::Category.find_by_name('Tool Boxes')
product523.categories << category523 if category523.present? and product523.present?
vehicle523 = Refinery::Products::Vehicle.find_by_name('')
product523.vehicles << vehicle523 if vehicle523.present? and product523.present?
product524 = Refinery::Products::Product.create!(product_no:'ITB009', name:'1770mm Gullwing Alloy Truck Box', description:'Ironman 4x4\'s high quality aluminium ute, truck and trailer tool boxes that provide protection for a tradies most valuable assets. Our tool boxes are constructed from high quality aluminium and are powdercoated white. Ironman tool boxes are fitted with quality parts including stainless steel hinges, gas struts and strong locking mechanisms. Alloy tool boxes fit conveniently onboard your ute, truck or trailer providing protection from the elements and security for your tools. Every ute needs a tool box.', notes:nil) if not '1770mm Gullwing Alloy Truck Box'.blank?
category524 = Refinery::Products::Category.find_by_name('Tool Boxes')
product524.categories << category524 if category524.present? and product524.present?
vehicle524 = Refinery::Products::Vehicle.find_by_name('')
product524.vehicles << vehicle524 if vehicle524.present? and product524.present?
