#!/bin/bash
# 1. Update Gallery to 16:9 aspect ratio and add missing images
sed -i 's/aspect-square/aspect-video/g' index.html

# 2. Add the missing 3 "Why Choose Us" cards
sed -i '/<!-- Why Choose Us Grid -->/!b;n;c\
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mt-12">\
            <!-- Feature 1 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="users"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Experienced Trainers</h3>\
                <p class="text-slate-600">Learn directly from industry experts with years of real-world teaching experience.</p>\
            </div>\
            <!-- Feature 2 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="laptop"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Practical Training</h3>\
                <p class="text-slate-600">100% hands-on learning approach focusing on practical implementation.</p>\
            </div>\
            <!-- Feature 3 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="book-open"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Updated Syllabus</h3>\
                <p class="text-slate-600">Curriculum strictly aligned with current industry standards and demands.</p>\
            </div>\
            <!-- Feature 4 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="users-2"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Small Batches</h3>\
                <p class="text-slate-600">Limited student intake per batch ensuring personalized focus for everyone.</p>\
            </div>\
            <!-- Feature 5 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="award"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Certificate</h3>\
                <p class="text-slate-600">Valuable, recognized certification awarded upon successful completion.</p>\
            </div>\
            <!-- Feature 6 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="clock"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Flexible Timings</h3>\
                <p class="text-slate-600">Multiple batch options designed to suit students and working professionals.</p>\
            </div>\
            <!-- Feature 7 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="indian-rupee"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Affordable Fees</h3>\
                <p class="text-slate-600">High-quality computer education at completely reasonable and competitive prices.</p>\
            </div>\
            <!-- Feature 8 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="eye"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Individual Attention</h3>\
                <p class="text-slate-600">Dedicated mentorship for every single student to clear their doubts.</p>\
            </div>\
            <!-- Feature 9 -->\
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover:shadow-md transition-shadow group">\
                <div class="w-14 h-14 bg-brand-light/30 rounded-xl flex items-center justify-center text-brand-primary mb-6 group-hover:scale-110 transition-transform">\
                    <i data-lucide="monitor"></i>\
                </div>\
                <h3 class="text-xl font-bold text-slate-800 mb-3">Modern Computer Labs</h3>\
                <p class="text-slate-600">Fully equipped high-performance systems with the latest software versions.</p>\
            </div>\
        </div>\
<!-- END GRID -->'

bash fix_nitpicks.sh
