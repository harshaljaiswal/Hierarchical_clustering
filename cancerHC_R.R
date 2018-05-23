# K-Means Clustering

# Importing the dataset
dataset = read.csv('data.csv')
data = dataset[3:32]

# Using the dendrogram to find the optimal number of clusters
dendrogram = hclust(d = dist(data, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'patients',
     ylab = 'Euclidean distances')

# Fitting Hierarchical Clustering to the dataset
hc = hclust(d = dist(data, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 2)