#!/bin/bash
# Adding remaining requested files for the gallery

sed -i '/gallery-centre-exterior\.jpg/a\
                <div class="group relative rounded-xl overflow-hidden shadow-sm aspect-video bg-gray-100">\
                    <img src="assets/images/gallery-classroom-2.jpg" alt="Classroom" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110" onerror="this.src='\''https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&q=80&w=800'\''">\
                    <div class="absolute inset-0 bg-brand-primary/80 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex flex-col items-center justify-center text-white">\
                        <i data-lucide="zoom-in" class="w-8 h-8 mb-2"></i>\
                        <span class="font-medium">Classroom</span>\
                    </div>\
                </div>\
                <div class="group relative rounded-xl overflow-hidden shadow-sm aspect-video bg-gray-100">\
                    <img src="assets/images/gallery-lab-2.jpg" alt="Computer Lab" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110" onerror="this.src='\''https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?auto=format&fit=crop&q=80&w=800'\''">\
                    <div class="absolute inset-0 bg-brand-primary/80 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex flex-col items-center justify-center text-white">\
                        <i data-lucide="zoom-in" class="w-8 h-8 mb-2"></i>\
                        <span class="font-medium">Computer Lab</span>\
                    </div>\
                </div>\
                <div class="group relative rounded-xl overflow-hidden shadow-sm aspect-video bg-gray-100">\
                    <img src="assets/images/gallery-event-2.jpg" alt="Event" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110" onerror="this.src='\''https://images.unsplash.com/photo-1540575467063-178a50c2df87?auto=format&fit=crop&q=80&w=800'\''">\
                    <div class="absolute inset-0 bg-brand-primary/80 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex flex-col items-center justify-center text-white">\
                        <i data-lucide="zoom-in" class="w-8 h-8 mb-2"></i>\
                        <span class="font-medium">Event</span>\
                    </div>\
                </div>' index.html
