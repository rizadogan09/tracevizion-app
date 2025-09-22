#!/bin/bash

# TraceVizion App - GitHub Setup Script
# Dieses Script hilft beim automatischen Setup für GitHub Pages

echo "🚀 TraceVizion App - GitHub Setup"
echo "================================="
echo ""

# Prüfe ob Git installiert ist
if ! command -v git &> /dev/null; then
    echo "❌ Git ist nicht installiert. Bitte installieren Sie Git zuerst."
    echo "   Download: https://git-scm.com/downloads"
    exit 1
fi

# Prüfe ob wir im richtigen Verzeichnis sind
if [ ! -f "index.html" ]; then
    echo "❌ index.html nicht gefunden. Bitte führen Sie das Script im tracevizion-app Ordner aus."
    exit 1
fi

echo "✅ Git ist installiert"
echo "✅ index.html gefunden"
echo ""

# Git Status prüfen
echo "📊 Git Status:"
git status --short
echo ""

# Alle Änderungen committen falls nötig
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Committing alle Änderungen..."
    git add .
    git commit -m "Update TraceVizion App - $(date)"
    echo "✅ Änderungen committed"
else
    echo "✅ Keine uncommitted Änderungen"
fi

echo ""
echo "🔗 GitHub Repository Setup:"
echo "=========================="
echo ""
echo "1. Gehen Sie zu https://github.com/new"
echo "2. Repository Name: tracevizion-app"
echo "3. Description: Professional Trading Analysis Platform"
echo "4. Wählen Sie 'Public'"
echo "5. NICHT 'Initialize with README' ankreuzen"
echo "6. Klicken Sie 'Create repository'"
echo ""
echo "7. Nach dem Erstellen, kopieren Sie die Repository URL"
echo "   (sollte so aussehen: https://github.com/IHRUSERNAME/tracevizion-app.git)"
echo ""
echo "8. Führen Sie dann diese Befehle aus:"
echo ""
echo "   git remote add origin [IHR_REPOSITORY_URL]"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "9. Aktivieren Sie GitHub Pages:"
echo "   - Gehen Sie zu Settings > Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main, Folder: / (root)"
echo "   - Save"
echo ""
echo "10. Nach 2-5 Minuten ist Ihre App live unter:"
echo "    https://IHRUSERNAME.github.io/tracevizion-app/"
echo ""

# Prüfe ob bereits ein Remote existiert
if git remote -v | grep -q origin; then
    echo "ℹ️  Remote 'origin' bereits konfiguriert:"
    git remote -v
    echo ""
    echo "Um ein neues Repository zu verwenden:"
    echo "git remote remove origin"
    echo "git remote add origin [NEUE_REPOSITORY_URL]"
fi

echo "📱 Mobile Zugriff:"
echo "=================="
echo "Nach dem Setup können Sie die App auf Ihrem iPhone nutzen:"
echo "1. Öffnen Sie Safari"
echo "2. Gehen Sie zu: https://IHRUSERNAME.github.io/tracevizion-app/"
echo "3. Tippen Sie auf das Teilen-Symbol"
echo "4. 'Zum Home-Bildschirm hinzufügen'"
echo "5. Fertig! 🎉"
echo ""

echo "✅ Setup-Script abgeschlossen!"
echo "Folgen Sie den obigen Schritten für das GitHub Setup."
