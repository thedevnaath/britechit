#!/bin/bash
# Replaces the Why Choose Us grid with the updated 9 items from line 415 to 477

sed -i '415,477c\
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-blue-100 text-blue-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="user-check" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Experienced Trainers</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Learn directly from industry professionals with years of practical experience and excellent teaching skills.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-green-100 text-green-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="monitor-play" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Practical Training</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">100% practical, hands-on learning approach. We focus on real-world projects rather than just theory.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-purple-100 text-purple-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="book-open" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Updated Syllabus</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Our curriculum is regularly updated to match current industry standards and technological advancements.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-orange-100 text-orange-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="users" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Small Batches</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">We keep our batch sizes small to ensure every student receives personalized attention and doubt clearing.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-rose-100 text-rose-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="indian-rupee" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Affordable Fees</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">High-quality computer education at completely reasonable and competitive prices.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-teal-100 text-teal-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="award" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Certificate</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Valuable, recognized certification awarded upon successful completion.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-indigo-100 text-indigo-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="clock" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Flexible Timings</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Multiple batch options designed to suit students and working professionals.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-pink-100 text-pink-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="eye" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Individual Attention</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Dedicated mentorship for every single student to clear their doubts.</p>\
                    </div>\
                </div>\
                <div class="flex items-start p-6 bg-gray-50 rounded-xl hover:bg-white hover:shadow-lg border border-transparent hover:border-gray-100 transition-all duration-300">\
                    <div class="w-12 h-12 bg-cyan-100 text-cyan-600 rounded-xl flex items-center justify-center shrink-0 mr-4">\
                        <i data-lucide="laptop" class="w-6 h-6"></i>\
                    </div>\
                    <div>\
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Modern Computer Labs</h3>\
                        <p class="text-gray-600 text-sm leading-relaxed">Fully equipped high-performance systems with the latest software versions.</p>\
                    </div>\
                </div>\
            </div>' index.html

bash fix_grid.sh
