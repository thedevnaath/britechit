// BRITECH IT Custom JavaScript

document.addEventListener('DOMContentLoaded', () => {
    // Initialize Lucide Icons
    lucide.createIcons();

    // Mobile Menu Toggle
    const mobileMenuBtn = document.getElementById('mobile-menu-btn');
    const mobileMenu = document.getElementById('mobile-menu');
    const mobileLinks = document.querySelectorAll('.mobile-link');

    if (mobileMenuBtn && mobileMenu) {
        mobileMenuBtn.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
            const icon = mobileMenu.classList.contains('hidden') ? 'menu' : 'x';
            mobileMenuBtn.innerHTML = `<i data-lucide="${icon}" class="w-6 h-6"></i>`;
            lucide.createIcons(); // Re-initialize the updated icon
        });

        // Close mobile menu when a link is clicked
        mobileLinks.forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.classList.add('hidden');
                mobileMenuBtn.innerHTML = `<i data-lucide="menu" class="w-6 h-6"></i>`;
                lucide.createIcons();
            });
        });
    }
});

// Modal Logic
window.openCourseModal = function(courseId) {
    const modal = document.getElementById(`modal-${courseId}`);
    const overlay = document.getElementById('modal-overlay');

    if (modal && overlay) {
        // Show elements
        modal.classList.remove('hidden');
        overlay.classList.remove('hidden');

        // Add small delay for transition effect
        setTimeout(() => {
            modal.classList.remove('opacity-0');
            overlay.classList.remove('opacity-0');
            document.body.style.overflow = 'hidden'; // Prevent background scrolling
        }, 10);
    }
};

window.closeModals = function() {
    const modals = document.querySelectorAll('[id^="modal-"]:not(#modal-overlay)');
    const overlay = document.getElementById('modal-overlay');

    // Start fade out
    modals.forEach(modal => modal.classList.add('opacity-0'));
    if (overlay) overlay.classList.add('opacity-0');

    // Hide elements after transition
    setTimeout(() => {
        modals.forEach(modal => modal.classList.add('hidden'));
        if (overlay) overlay.classList.add('hidden');
        document.body.style.overflow = ''; // Restore scrolling
    }, 300);
};

// Close modal on Escape key press
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
        closeModals();
    }
});

// WhatsApp Form Submission Logic
window.submitToWhatsApp = function() {
    const form = document.getElementById('enquiry-form');

    // Check HTML5 validation
    if (!form.checkValidity()) {
        form.reportValidity();
        return;
    }

    const name = document.getElementById('name').value;
    const phone = document.getElementById('phone').value;
    const course = document.getElementById('course').value;
    const batch = document.getElementById('batch').value;
    const message = document.getElementById('message').value;

    const targetWhatsAppNumber = "919876543210";

    let whatsappMessage = `*New Admission Enquiry*\n\n`;
    whatsappMessage += `*Name:* ${name}\n`;
    whatsappMessage += `*Phone:* ${phone}\n`;
    if(course) whatsappMessage += `*Course Interested:* ${course}\n`;
    if(batch) whatsappMessage += `*Preferred Batch:* ${batch}\n`;
    if(message) whatsappMessage += `*Message:* ${message}`;

    const encodedMessage = encodeURIComponent(whatsappMessage);
    const whatsappURL = `https://wa.me/${targetWhatsAppNumber}?text=${encodedMessage}`;

    window.open(whatsappURL, '_blank');
};

// Handle Standard Form Submit
document.getElementById('enquiry-form')?.addEventListener('submit', function(e) {
    e.preventDefault();
    alert('Thank you for your enquiry! Our team will contact you shortly.');
    this.reset();
});

// FAQ Accordion Logic
const faqBtns = document.querySelectorAll('.faq-btn');
if (faqBtns) {
    faqBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            const content = btn.nextElementSibling;
            const icon = btn.querySelector('i');

            // Toggle current
            content.classList.toggle('hidden');

            // Rotate icon
            if (content.classList.contains('hidden')) {
                icon.style.transform = 'rotate(0deg)';
            } else {
                icon.style.transform = 'rotate(180deg)';
            }
        });
    });
}

// Back to Top Button & Sticky Header Logic
const backToTopBtn = document.getElementById('back-to-top');
const header = document.querySelector('header');

window.addEventListener('scroll', () => {
    // Back to top button visibility
    if (window.scrollY > 500) {
        backToTopBtn?.classList.remove('translate-y-20', 'opacity-0');
    } else {
        backToTopBtn?.classList.add('translate-y-20', 'opacity-0');
    }

    // Optional: Add shadow to header on scroll
    if (window.scrollY > 10) {
        header?.classList.add('shadow-md');
    } else {
        header?.classList.remove('shadow-md');
    }
});

if (backToTopBtn) {
    backToTopBtn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// Set Current Year in Footer
const currentYearEl = document.getElementById('current-year');
if (currentYearEl) {
    currentYearEl.textContent = new Date().getFullYear();
}
