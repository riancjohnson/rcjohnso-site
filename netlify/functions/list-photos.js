const fs = require('fs');
const path = require('path');

exports.handler = async () => {
  try {
      const imagesDir = path.join(process.cwd(), 'images');
          const files = fs.readdirSync(imagesDir)
                .filter(f => /\.(jpe?g|png|gif|webp)$/i.test(f))
                      .filter(f => f !== 'hero.jpg')
                            .sort();

                                return {
                                      statusCode: 200,
                                            headers: { 'Content-Type': 'application/json' },
                                                  body: JSON.stringify(files),
                                                      };
                                                        } catch (err) {
                                                            return {
                                                                  statusCode: 500,
                                                                        body: JSON.stringify({ error: err.message }),
                                                                            };
                                                                              }
                                                                              };
